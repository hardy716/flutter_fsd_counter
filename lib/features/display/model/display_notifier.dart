import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';

final displayNotifierProvider = Provider<DisplayNotifier>((ref) {
  final counterApi = ref.watch(counterApiProvider);
  return DisplayNotifier(counterApi);
});

class DisplayNotifier {
  final CounterApi _counterApi;

  DisplayNotifier(this._counterApi);

  Future<void> loadCounter(WidgetRef ref) async {
    ref.read(counterStateProvider.notifier).state = const CounterState.loading();

    try {
      final counter = await _counterApi.getCounter();

      ref.read(counterStateProvider.notifier).state = CounterState.loaded(counter);
    } catch (e) {
      ref.read(counterStateProvider.notifier).state = CounterState.error(e.toString());
    }
  }

  void initializeIfNeeded(WidgetRef ref) {
    final currentState = ref.read(counterStateProvider);

    currentState.whenOrNull(
      initial: () => loadCounter(ref),
    );
  }
}