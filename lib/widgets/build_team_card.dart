import 'package:flutter/material.dart';

import 'build_point_button.dart';
import 'build_team_name_tem.dart';
import 'build_team_point_item.dart';

class BuildTeamCard extends StatelessWidget {
  const BuildTeamCard({
    super.key,
    required this.teamName,
    required this.teamPoints,
    required this.color,
    required this.onAdd1,
    required this.onAdd2,
    required this.onAdd3,
  });

  final String teamName;
  final int teamPoints;
  final Color color;
  final VoidCallback onAdd1;
  final VoidCallback onAdd2;
  final VoidCallback onAdd3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildTeamNameItem(teamName: teamName, color: color),
        SizedBox(height: 30),
        BuildTeamPointItem(teamPoints: teamPoints, color: color),
        SizedBox(height: 40),
        BuildPointButton(color: color, text: "1 Point", onPressed: onAdd1),
        SizedBox(height: 15),
        BuildPointButton(color: color, text: "2 Points", onPressed: onAdd2),
        SizedBox(height: 15),
        BuildPointButton(color: color, text: "3 Points", onPressed: onAdd3),
      ],
    );
  }
}
