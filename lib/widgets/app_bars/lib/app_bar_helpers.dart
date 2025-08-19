import 'package:flutter/material.dart';

import '../model/app_bar_action.dart';

class AppBarHelpers {
  static List<Widget> buildActions(List<AppBarAction> actions) {
    return actions.map((action) => IconButton(
      icon: Icon(action.icon),
      onPressed: action.onPressed,
      tooltip: action.tooltip,
    )).toList();
  }

  static Widget? buildLeading({
    required bool showBackButton,
    VoidCallback? onLeadingPressed,
    String? backRoute,
  }) {
    if (!showBackButton) return null;

    return Builder(
      builder: (context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onLeadingPressed,
      ),
    );
  }
}