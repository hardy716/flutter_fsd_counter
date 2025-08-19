import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/ui/components/app_button.dart';
import '../model/counter_notifier.dart';
import '../model/counter_state.dart';

class CounterControls extends ConsumerWidget {
  const CounterControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterNotifierProvider);
    final notifier = ref.read(counterNotifierProvider.notifier);
    final isLoading = counterState.isLoading;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppButton.icon(
              onPressed: isLoading ? null : notifier.decrement,
              icon: Icons.remove,
              label: 'decrement',
              variant: AppButtonVariant.outlined,
            ),
            AppButton.icon(
              onPressed: isLoading ? null : notifier.increment,
              icon: Icons.add,
              label: 'increment',
            ),
          ],
        ),

        const SizedBox(height: 16),

        AppButton.icon(
          onPressed: isLoading ? null : () => _showResetDialog(context, notifier),
          icon: Icons.refresh,
          label: 'Reset',
          variant: AppButtonVariant.text,
        ),

        const SizedBox(height: 16),

        if (isLoading)
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 8),
              Text('Processing...'),
            ],
          ),
      ],
    );
  }

  void _showResetDialog(BuildContext context, CounterNotifier notifier) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Warning'),
        content: const Text('Do you really want to reset the counter to zero?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('NO'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              notifier.reset();
            },
            child: const Text('Resest'),
          ),
        ],
      ),
    );
  }
}