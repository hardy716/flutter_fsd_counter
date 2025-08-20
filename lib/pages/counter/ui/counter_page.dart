import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../features/display/index.dart';
import '../../../widgets/app_bars/index.dart';
import '../../../widgets/controller/index.dart';

import '../lib/counter_page_helpers.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: ConfigurableAppBar(
        config: AppBarConfig(
          title: 'Counter',
          actions: [
            AppBarAction(
              icon: Icons.info_outline,
              onPressed: () => CounterPageHelpers.showInfoDialog(context),
              tooltip: 'Information',
            ),
          ],
        ),
        onLeadingPressed: () => CounterPageHelpers.stopCounter(ref),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: CounterDisplay()),
            Expanded(flex: 1, child: CounterController()),
          ],
        ),
      ),
    );
  }
}
