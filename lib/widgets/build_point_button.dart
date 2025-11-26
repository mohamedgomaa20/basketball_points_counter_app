import 'package:basketball_points_counter_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BuildPointButton extends StatelessWidget {
  const BuildPointButton({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 140,
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [color, color.withValues(alpha: .7)],
          ),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: .4),
              blurRadius: 15,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              letterSpacing: .5,
            ),
          ),
        ),
      ),
    );
  }
}
