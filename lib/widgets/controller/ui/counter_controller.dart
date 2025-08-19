import 'package:flutter/cupertino.dart';

import '../../../features/decrement/ui/decrement_button.dart';
import '../../../features/increment/ui/increment_button.dart';
import '../../../features/reset/ui/reset_button.dart';

class CounterController extends StatelessWidget {
  const CounterController({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DecrementButton(),
            IncrementButton(),
          ],
        ),
        ResetButton(),
      ],
    );
  }
}