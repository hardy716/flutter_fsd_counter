import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';

final resetNotifierProvider = Provider<ResetNotifier>((ref) {
  final counterApi = ref.watch(counterApiProvider);
  return ResetNotifier(counterApi);
});

class ResetNotifier {
  final CounterApi _counterApi;

  ResetNotifier(this._counterApi);

  Future<void> reset(WidgetRef ref) async {
    ref.read(counterStateProvider.notifier).state = const CounterState.loading();

    try {
      final counter = await _counterApi.updateCounter('reset');
      final updatedCounter = counter;

      ref.read(counterStateProvider.notifier).state = CounterState.loaded(updatedCounter);
    } catch (e) {
      ref.read(counterStateProvider.notifier).state = CounterState.error(e.toString());
    }
  }
}