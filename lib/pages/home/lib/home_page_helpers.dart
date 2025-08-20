import 'package:flutter/material.dart';

class HomePageHelpers {
  static void showArchitectureInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
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
            actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('OK'))],
          ),
    );
  }
}