import 'dart:ui';

import 'app_bar_action.dart';

class AppBarConfig {
  final String title;
  final Color? backgroundColor;
  final bool showLeading;
  final List<AppBarAction> actions;

  const AppBarConfig({
    required this.title,
    this.backgroundColor,
    this.showLeading = true,
    this.actions = const [],
  });
}