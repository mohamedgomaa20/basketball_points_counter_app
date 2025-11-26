import 'package:basketball_points_counter_app/widgets/header_section.dart';
import 'package:flutter/material.dart';

import '../widgets/gradient_background.dart';
import '../widgets/main_content_section.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(children: [HeaderSection(), MainContentSection()]),
        ),
      ),
    );
  }
}
