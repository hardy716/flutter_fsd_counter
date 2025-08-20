import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/stop/index.dart';

class CounterPageHelpers {
  static void showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Information'),
        content: const Text(
          'This display uses the following packages:\n\n'
              '• RiverPod: State Management\n'
              '• Go Router: Routing\n'
              '• Freezed: Immutable Object\n'
              '• Dio: HTTP Client',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static void stopCounter(WidgetRef ref) {
    final stopNotifier = ref.read(stopNotifierProvider);
    stopNotifier.stop(ref);
  }
}