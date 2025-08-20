import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../entities/counter/index.dart';
import '../../../shared/index.dart';
import '../model/increment_notifier.dart';


class IncrementButton extends ConsumerWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(incrementNotifierProvider);
    final counterState = ref.watch(counterStateProvider);

    final isLoading = counterState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    return AppButton.icon(
      onPressed: isLoading ? null : () => notifier.increment(ref),
      icon: Icons.add,
      label: 'Increment',
    );
  }
}