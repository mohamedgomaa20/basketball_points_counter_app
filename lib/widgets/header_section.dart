import 'package:basketball_points_counter_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sports_basketball,
            color: AppColors.teamAColorOne,
            size: 32,
          ),
          SizedBox(width: 12),
          Text(
            "BasketBall Score",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
