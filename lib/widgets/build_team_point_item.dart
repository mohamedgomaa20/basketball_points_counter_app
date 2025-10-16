import 'package:flutter/material.dart';

class BuildTeamPointItem extends StatelessWidget {
  const BuildTeamPointItem({
    super.key,
    required this.teamPoints,
    required this.color,
  });

  final int teamPoints;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color.withOpacity(.3),
            color.withOpacity(.1),
            Colors.transparent,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(.3),
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Text(
          "$teamPoints",
          style: TextStyle(
            fontSize: 75,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [Shadow(color: color.withOpacity(.8), blurRadius: 20)],
          ),
        ),
      ),
    );
  }
}
