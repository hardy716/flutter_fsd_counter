import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';
part 'counter.g.dart';

@freezed
abstract class Counter with _$Counter {
  const factory Counter({
    @Default(0) int value,
    @Default('') String lastAction,
    @JsonKey(name: 'updated_at')
    DateTime? lastUpdated,
  }) = _Counter;

  factory Counter.fromJson(Map<String, dynamic> json) =>
      _$CounterFromJson(json);
}

extension CounterX on Counter {
  bool get isPositive => value > 0;
  bool get isNegative => value < 0;
  bool get isZero => value == 0;

  String get displayText {
    if (isZero) return 'Start!';
    if (isPositive) return 'Positive! 😊';
    return 'Negative 🤔';
  }
}