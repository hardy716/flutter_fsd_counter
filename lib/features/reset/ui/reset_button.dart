import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';
import '../../../shared/index.dart';
import '../model/reset_notifier.dart';

class ResetButton extends ConsumerWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(resetNotifierProvider);
    final counterState = ref.watch(counterStateProvider);

    final isLoading = counterState.maybeWhen(loading: () => true, orElse: () => false);

    return AppButton.icon(
      onPressed: isLoading ? null : () => _showResetDialog(context, onReset: () => notifier.reset(ref)),
      icon: Icons.refresh,
      label: 'Reset',
      variant: AppButtonVariant.text,
    );
  }

  void _showResetDialog(BuildContext context, {required VoidCallback onReset}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Counter'),
        content: const Text('Are you sure you want to reset?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              onReset.call();
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}
