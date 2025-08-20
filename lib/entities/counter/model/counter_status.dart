import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_status.freezed.dart';

final counterStatusProvider = StateProvider<CounterStatus>((ref) {
  return const CounterStatus.stopped();
});

@freezed
class CounterStatus with _$CounterStatus {
  const factory CounterStatus.stopped() = _Inactive;
  const factory CounterStatus.starting() = _Starting;
  const factory CounterStatus.started() = _Active;
  const factory CounterStatus.error(String message) = _Error;
}