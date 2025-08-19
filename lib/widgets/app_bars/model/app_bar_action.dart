import 'package:flutter/cupertino.dart';

class AppBarAction {
  final IconData icon;
  final VoidCallback onPressed;
  final String? tooltip;

  const AppBarAction({
    required this.icon,
    required this.onPressed,
    this.tooltip,
  });
}