import 'package:flutter/material.dart';

import '../../../features/display/ui/counter_display.dart';
import '../../../widgets/app_bars/model/app_bar_action.dart';
import '../../../widgets/app_bars/model/app_bar_config.dart';
import '../../../widgets/app_bars/ui/configurable_app_bar.dart';
import '../../../widgets/controller/ui/counter_controller.dart';
import '../model/counter_page_config.dart';
import '../lib/counter_page_helpers.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  static const _config = CounterPageConfig();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ConfigurableAppBar(
        config: AppBarConfig(
          title: _config.title,
          actions: [
            AppBarAction(
              icon: Icons.info_outline,
              onPressed: () => CounterPageHelpers.showInfoDialog(context),
              tooltip: 'Information',
            ),
          ],
        ),
        onLeadingPressed: () => CounterPageHelpers.navigateBack(context),
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
