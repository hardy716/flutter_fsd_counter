import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/ui/components/app_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('FSD Counter App'),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calculate,
                size: 100,
                color: theme.primaryColor,
              ),

              const SizedBox(height: 32),

              Text(
                'Welcome to the counter app with FSD architecture!',
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              Text(
                'A structured Flutter app with a Feature-Sliced Design pattern.',
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              AppButton.icon(
                onPressed: () => context.go('/counter'),
                icon: Icons.play_arrow,
                label: 'Start Counter',
              ),

              const SizedBox(height: 16),

              AppButton(
                onPressed: () => _showArchitectureInfo(context),
                variant: AppButtonVariant.text,
                child: const Text('FSD Architecture Information'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showArchitectureInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Feature-Sliced Design'),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('The structure of this app:'),
              SizedBox(height: 8),
              Text('• Shared: Common Components'),
              Text('• Entities: Business Domain'),
              Text('• Features: Functional logic'),
              Text('• Pages: Screen Configuration'),
              SizedBox(height: 16),
              Text('Each layer has a clear responsibility,\nIt provides an expandable structure.'),
            ],
          ),
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
}