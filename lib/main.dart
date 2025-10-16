import 'package:basketball_points_counter_app/basketball_points_counter_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballPointsCounterScreen(),
    );
  }
}
