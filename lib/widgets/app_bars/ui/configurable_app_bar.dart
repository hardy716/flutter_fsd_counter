import 'package:flutter/material.dart';
import '../model/app_bar_config.dart';
import '../lib/app_bar_helpers.dart';

class ConfigurableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBarConfig config;
  final VoidCallback? onLeadingPressed;
  final String? backRoute;

  const ConfigurableAppBar({
    super.key,
    required this.config,
    this.onLeadingPressed,
    this.backRoute,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(config.title),
      backgroundColor: config.backgroundColor ??
          Theme.of(context).colorScheme.inversePrimary,
      leading: AppBarHelpers.buildLeading(
        showLeading: config.showLeading,
        onLeadingPressed: onLeadingPressed,
        backRoute: backRoute,
      ),
      actions: AppBarHelpers.buildActions(config.actions),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}