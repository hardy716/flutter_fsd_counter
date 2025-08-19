import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/providers/dio_provider.dart';
import '../model/counter.dart';

final counterApiProvider = Provider<CounterApi>((ref) {
  final dio = ref.watch(dioProvider);
  return CounterApi(dio);
});

class CounterApi {
  final Dio _dio;

  CounterApi(this._dio);

  Future<Counter> getCounter() async {
    await Future.delayed(const Duration(milliseconds: 500)); // network delay simulation

    try {
      return Counter(
        value: 0,
        lastAction: 'initialized',
        lastUpdated: DateTime.now(),
      );
    } catch (e) {
      throw Exception('Could not get display data: $e');
    }
  }

  Future<Counter> updateCounter(String action) async {
    await Future.delayed(const Duration(milliseconds: 300));

    try {
      // In practice, API calls:
      // final response = await _dio.post('/display', data: {'action': action});

      // simulation logic
      final currentTime = DateTime.now();

      switch (action) {
        case 'increment':
          return Counter(
            value: 1,
            lastAction: 'increment',
            lastUpdated: currentTime,
          );
        case 'decrement':
          return Counter(
            value: -1,
            lastAction: 'decrement',
            lastUpdated: currentTime,
          );
        case 'reset':
          return Counter(
            value: 0,
            lastAction: 'reset',
            lastUpdated: currentTime,
          );
        default:
          throw Exception('Unsupported Action: $action');
      }
    } catch (e) {
      throw Exception('Counter update failed: $e');
    }
  }
}