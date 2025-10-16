import 'package:flutter/material.dart';

class BuildTeamNameItem extends StatelessWidget {
  const BuildTeamNameItem({
    super.key,
    required this.color,
    required this.teamName,
  });

  final Color color;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: color.withOpacity(.3),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(.3), width: 2),
      ),
      child: Text(
        teamName,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
