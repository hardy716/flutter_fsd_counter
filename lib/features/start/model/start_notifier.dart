import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';

final startNotifierProvider = Provider<StartNotifier>((ref) {
  final counterApi = ref.watch(counterApiProvider);
  return StartNotifier(counterApi);
});

class StartNotifier {
  final CounterApi _counterApi;

  StartNotifier(this._counterApi);

  Future<void> start(WidgetRef ref) async {
    ref.read(counterStatusProvider.notifier).state = const CounterStatus.starting();

    try {
      await _initializeCounter();
      await _counterApi.getCounter();
      await _loadSettings(ref);

      ref.read(counterStatusProvider.notifier).state = const CounterStatus.started();

    } catch (e) {
      ref.read(counterStatusProvider.notifier).state = CounterStatus.error(e.toString());
    }
  }

  Future<void> _initializeCounter() async {
    await Future.delayed(const Duration(milliseconds: 800));
  }

  Future<void> _loadSettings(WidgetRef ref) async {
    await Future.delayed(const Duration(milliseconds: 200));
  }
}