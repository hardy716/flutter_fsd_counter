import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';

final decrementNotifierProvider = Provider<DecrementNotifier>((ref) {
  final counterApi = ref.watch(counterApiProvider);
  return DecrementNotifier(counterApi);
});

class DecrementNotifier {
  final CounterApi _counterApi;

  DecrementNotifier(this._counterApi);

  Future<void> decrement(WidgetRef ref) async {
    try {
      final currentState = ref.read(counterStateProvider);

      final currentValue = currentState.maybeWhen(
        loaded: (counter) => counter.value,
        orElse: () => 0,
      );

      ref.read(counterStateProvider.notifier).state = const CounterState.loading();

      final counter = await _counterApi.updateCounter('decrement');
      final updatedCounter = counter.copyWith(value: currentValue - 1);

      ref.read(counterStateProvider.notifier).state = CounterState.loaded(updatedCounter);
    } catch (e) {
      ref.read(counterStateProvider.notifier).state = CounterState.error(e.toString());
    }
  }
}