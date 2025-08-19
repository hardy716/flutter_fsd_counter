import 'package:flutter/cupertino.dart';

class CounterPageConfig {
  final String title;
  final String infoDialogContent;
  final EdgeInsets bodyPadding;

  const CounterPageConfig({
    this.title = 'Counter',
    this.infoDialogContent = 'This display uses...',
    this.bodyPadding = const EdgeInsets.all(24.0),
  });
}