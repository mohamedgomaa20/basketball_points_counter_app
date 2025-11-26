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
            colors: [Color(0xFFe94560), Color(0xFFf4567c)],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFe94560).withValues(alpha: 0.4),
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.refresh, color: Colors.white, size: 24),
            SizedBox(width: 12),
            Text(
              "Reset Game",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
