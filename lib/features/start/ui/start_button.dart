import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/index.dart';
import '../../../entities/counter/index.dart';
import '../model/start_notifier.dart';

class StartButton extends ConsumerWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startNotifier = ref.read(startNotifierProvider);
    final counterStatus = ref.watch(counterStatusProvider);

    return counterStatus.when(
      stopped: () => AppButton.icon(
        onPressed: () => startNotifier.start(ref),
        icon: Icons.play_arrow,
        label: 'Start Counter',
      ),
      starting: () => AppButton.icon(
        onPressed: null,
        icon: Icons.hourglass_empty,
        label: 'Starting...',
      ),
      started: () => const SizedBox.shrink(),
      error: (error) => AppButton.icon(
        onPressed: () => startNotifier.start(ref),
        icon: Icons.refresh,
        label: 'Retry',
      ),
    );
  }
}