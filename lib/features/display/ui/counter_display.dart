import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';
import '../../../shared/index.dart';
import '../model/display_notifier.dart';

class CounterDisplay extends ConsumerWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterStateProvider);
    final displayNotifier = ref.read(displayNotifierProvider);

    Future(() {
      displayNotifier.initializeIfNeeded(ref);
    });

    return counterState.when(
      initial: () => const LoadingView(message: 'Initializing...'),
      loading: () => const LoadingView(message: 'Processing...'),
      loaded: (counter) => _buildLoadedState(context, counter),
      error: (message) => _buildErrorState(context, ref, message),
    );
  }

  Widget _buildLoadedState(BuildContext context, Counter counter) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16,
      children: [
        Text('Counter is...', style: theme.textTheme.titleMedium),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: theme.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: theme.primaryColor.withOpacity(0.3), width: 2),
          ),
          child: Text(
            '${counter.value}',
            style: theme.textTheme.displayLarge?.copyWith(color: theme.primaryColor, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          counter.displayText,
          style: theme.textTheme.titleMedium?.copyWith(
            color: counter.isPositive
                ? Colors.green
                : counter.isNegative
                ? Colors.orange
                : theme.textTheme.bodyMedium?.color,
          ),
        ),
        if (counter.lastAction.isNotEmpty && counter.lastUpdated != null) ...[
          Text(
            'Last action: ${_getActionText(counter.lastAction)}'
            '\n'
            'Updated: ${_formatTime(counter.lastUpdated!)}',
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }

  Widget _buildErrorState(BuildContext context, WidgetRef ref, String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, color: Colors.red, size: 64),
        const SizedBox(height: 16),
        Text('Error!', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text(message, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
        const SizedBox(height: 24),
        ElevatedButton.icon(
          onPressed: () => ref.read(displayNotifierProvider).loadCounter(ref),
          icon: const Icon(Icons.refresh),
          label: const Text('Try again'),
        ),
      ],
    );
  }

  String _getActionText(String action) {
    switch (action) {
      case 'increment':
        return 'increment';
      case 'decrement':
        return 'decrement';
      case 'reset':
        return 'reset';
      case 'initialized':
        return 'initialized';
      default:
        return action;
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}';
  }
}
