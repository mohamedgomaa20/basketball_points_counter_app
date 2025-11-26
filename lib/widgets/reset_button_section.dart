import 'package:basketball_points_counter_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ResetButtonSection extends StatelessWidget {
  const ResetButtonSection({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [AppColors.teamAColorOne, AppColors.teamAColorTwo],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.teamAColorOne.withValues(alpha: 0.4),
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.refresh, color: AppColors.white, size: 24),
            SizedBox(width: 12),
            Text(
              "Reset Game",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
