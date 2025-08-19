import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/model/counter_state.dart';
import '../../../shared/ui/components/app_button.dart';
import '../model/decrement_notifier.dart';

class DecrementButton extends ConsumerWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(decrementNotifierProvider);
    final counterState = ref.watch(counterStateProvider);

    final isLoading = counterState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    return AppButton.icon(
      onPressed: isLoading ? null : () => notifier.decrement(ref),
      icon: Icons.remove,
      label: 'Decrement',
      variant: AppButtonVariant.outlined,
    );
  }
}