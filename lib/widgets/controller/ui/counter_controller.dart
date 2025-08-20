import 'package:flutter/cupertino.dart';

import '../../../features/increment/index.dart';
import '../../../features/decrement/index.dart';
import '../../../features/reset/index.dart';

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