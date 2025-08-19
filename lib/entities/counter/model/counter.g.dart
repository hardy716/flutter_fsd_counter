// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Counter _$CounterFromJson(Map<String, dynamic> json) => _Counter(
  value: (json['value'] as num?)?.toInt() ?? 0,
  lastAction: json['lastAction'] as String? ?? '',
  lastUpdated: json['lastUpdated'] == null
      ? null
      : DateTime.parse(json['lastUpdated'] as String),
);

Map<String, dynamic> _$CounterToJson(_Counter instance) => <String, dynamic>{
  'value': instance.value,
  'lastAction': instance.lastAction,
  'lastUpdated': instance.lastUpdated?.toIso8601String(),
};
