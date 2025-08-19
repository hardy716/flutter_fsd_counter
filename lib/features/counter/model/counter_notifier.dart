import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/api/counter_api.dart';
import '../../../entities/counter/model/counter.dart';
import 'counter_state.dart';

final counterNotifierProvider =
StateNotifierProvider<CounterNotifier, CounterState>((ref) {
  final counterApi = ref.watch(counterApiProvider);
  return CounterNotifier(counterApi);
});

class CounterNotifier extends StateNotifier<CounterState> {
  final CounterApi _counterApi;
  Counter? _currentCounter;

  CounterNotifier(this._counterApi) : super(const CounterState.initial()) {
    loadCounter();
  }

  Future<void> loadCounter() async {
    state = const CounterState.loading();

    try {
      final counter = await _counterApi.getCounter();
      _currentCounter = counter;
      state = CounterState.loaded(counter);
    } catch (e) {
      state = CounterState.error(e.toString());
    }
  }

  Future<void> increment() async {
    if (!state.hasData) return;

    state = const CounterState.loading();

    try {
      final newValue = (_currentCounter?.value ?? 0) + 1;
      final counter = await _counterApi.updateCounter('increment');
      final updatedCounter = counter.copyWith(value: newValue);

      _currentCounter = updatedCounter;
      state = CounterState.loaded(updatedCounter);
    } catch (e) {
      state = CounterState.error(e.toString());
    }
  }

  Future<void> decrement() async {
    if (!state.hasData) return;

    state = const CounterState.loading();

    try {
      final newValue = (_currentCounter?.value ?? 0) - 1;
      final counter = await _counterApi.updateCounter('decrement');
      final updatedCounter = counter.copyWith(value: newValue);

      _currentCounter = updatedCounter;
      state = CounterState.loaded(updatedCounter);
    } catch (e) {
      state = CounterState.error(e.toString());
    }
  }

  Future<void> reset() async {
    state = const CounterState.loading();

    try {
      final counter = await _counterApi.updateCounter('reset');
      _currentCounter = counter;
      state = CounterState.loaded(counter);
    } catch (e) {
      state = CounterState.error(e.toString());
    }
  }
}