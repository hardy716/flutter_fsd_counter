import 'package:flutter/material.dart';

import '../../../shared/index.dart';
import '../../../widgets/app_bars/index.dart';
import '../../../features/start/index.dart';

import '../lib/home_page_helpers.dart';
import 'home_welcome_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ConfigurableAppBar(config: AppBarConfig(title: 'FSD Counter App', showLeading: false)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              HomeWelcomeSection(
                welcomeMessage: 'Welcome to the Counter App with FSD architecture!',
                appDescription: 'A structured Flutter app with a Feature-Sliced Design pattern.',
                icon: Icons.calculate,
              ),
              StartButton(),
              AppButton(
                onPressed: () => HomePageHelpers.showArchitectureInfoDialog(context),
                variant: AppButtonVariant.text,
                child: const Text('FSD Architecture Information'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
