import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/api/counter_api.dart';
import '../../../entities/counter/model/counter_state.dart';

final incrementNotifierProvider = Provider<IncrementNotifier>((ref) {
  final counterApi = ref.watch(counterApiProvider);
  return IncrementNotifier(counterApi);
});

class IncrementNotifier {
  final CounterApi _counterApi;

  IncrementNotifier(this._counterApi);

  Future<void> increment(WidgetRef ref) async {

    try {
      final currentState = ref.read(counterStateProvider);
      final currentValue = currentState.maybeWhen(
        loaded: (counter) => counter.value,
        orElse: () => 0,
      );

      ref.read(counterStateProvider.notifier).state = const CounterState.loading();

      final counter = await _counterApi.updateCounter('increment');
      final updatedCounter = counter.copyWith(value: currentValue + 1);

      ref.read(counterStateProvider.notifier).state = CounterState.loaded(updatedCounter);
    } catch (e) {
      ref.read(counterStateProvider.notifier).state = CounterState.error(e.toString());
    }
  }
}