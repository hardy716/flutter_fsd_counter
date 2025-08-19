import 'package:flutter/material.dart';

enum AppButtonVariant { filled, outlined, text }

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final AppButtonVariant variant;
  final IconData? icon;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.variant = AppButtonVariant.filled,
    this.icon,
  });

  factory AppButton.icon({
    Key? key,
    required VoidCallback? onPressed,
    required IconData icon,
    required String label,
    AppButtonVariant variant = AppButtonVariant.filled,
  }) {
    return AppButton(
      key: key,
      onPressed: onPressed,
      variant: variant,
      icon: icon,
      child: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Widget buttonChild = icon != null
        ? Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        child,
      ],
    )
        : child;

    switch (variant) {
      case AppButtonVariant.filled:
        return ElevatedButton(
          onPressed: onPressed,
          child: buttonChild,
        );
      case AppButtonVariant.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          child: buttonChild,
        );
      case AppButtonVariant.text:
        return TextButton(
          onPressed: onPressed,
          child: buttonChild,
        );
    }
  }
}