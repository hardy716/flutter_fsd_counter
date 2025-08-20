import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../entities/counter/index.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState.initial() = CounterInitial;
  const factory CounterState.loading() = CounterLoading;
  const factory CounterState.loaded(Counter counter) = CounterLoaded;
  const factory CounterState.error(String message) = CounterError;
}

final counterStateProvider = StateProvider<CounterState>((ref) {
  return const CounterState.initial();
});

extension CounterStateX on CounterState {
  bool get isLoading => this is CounterLoading;
  bool get hasData => this is CounterLoaded;

  Counter? get counter => maybeWhen(
    loaded: (counter) => counter,
    orElse: () => null,
  );
}