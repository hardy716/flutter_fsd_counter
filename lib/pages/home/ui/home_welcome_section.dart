import 'package:flutter/material.dart';

class HomeWelcomeSection extends StatelessWidget {
  final String welcomeMessage;
  final String appDescription;
  final IconData icon;
  final double iconSize;

  const HomeWelcomeSection({
    super.key,
    required this.welcomeMessage,
    required this.appDescription,
    this.icon = Icons.calculate,
    this.iconSize = 100,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Icon(icon, size: iconSize, color: theme.primaryColor),
        const SizedBox(height: 32),
        Text(welcomeMessage, style: theme.textTheme.headlineSmall, textAlign: TextAlign.center),
        const SizedBox(height: 16),
        Text(appDescription, style: theme.textTheme.bodyLarge, textAlign: TextAlign.center),
        const SizedBox(height: 32),
      ],
    );
  }
}
