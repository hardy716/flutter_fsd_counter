import 'dart:ui';

import 'app_bar_action.dart';

class AppBarConfig {
  final String title;
  final Color? backgroundColor;
  final bool showBackButton;
  final List<AppBarAction> actions;

  const AppBarConfig({
    required this.title,
    this.backgroundColor,
    this.showBackButton = true,
    this.actions = const [],
  });
}