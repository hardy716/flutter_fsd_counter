import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';

final stopNotifierProvider = Provider<StopNotifier>((ref) {
  return StopNotifier();
});

class StopNotifier {

  void stop(WidgetRef ref) {
    ref.read(counterStatusProvider.notifier).state = const CounterStatus.stopped();
  }
}