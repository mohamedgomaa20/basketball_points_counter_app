import 'package:flutter/material.dart';

class BasketballPointsCounterScreen extends StatefulWidget {
  @override
  State<BasketballPointsCounterScreen> createState() =>
      _BasketballPointsCounterScreenState();
}

class _BasketballPointsCounterScreenState
    extends State<BasketballPointsCounterScreen> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void addPoints({required String teamName, required int point}) {
    setState(() {
      if (teamName == "A") {
        teamAPoints += point;
      } else {
        teamBPoints += point;
      }
    });
  }

  void resetPoints() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1a1a2e), Color(0xFF16213e), Color(0xFF0f3460)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports_basketball, color: Color(0xFFe94560)),
                  SizedBox(width: 12),
                  Text(
                    "BasketBall Score",
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      BuildTeamCard(
                        teamName: "Team A",
                        teamPoints: teamAPoints,
                        color: Color(0xFFe94560),
                        onAdd1: () => addPoints(teamName: "A", point: 1),
                        onAdd2: () => addPoints(teamName: "A", point: 2),
                        onAdd3: () => addPoints(teamName: "A", point: 3),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 420,
                    child: VerticalDivider(indent: 30, endIndent: 20),
                  ),
                  BuildTeamCard(
                    teamName: "Team B",
                    teamPoints: teamBPoints,
                    color: Color(0xFF4ecca3),
                    onAdd1: () => addPoints(teamName: "B", point: 1),
                    onAdd2: () => addPoints(teamName: "B", point: 2),
                    onAdd3: () => addPoints(teamName: "B", point: 3),
                  ),
                ],
              ),
              SizedBox(height: 100),

              ElevatedButton(
                onPressed: () {
                  resetPoints();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Text("Reset", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildTeamNameItem(teamName: teamName, color: color),
        SizedBox(height: 30),
        BuildTeamPointItem(teamBPoints: teamPoints, color: color),
        BuildPointButton(color: color, text: "1 Point", onPressed: onAdd1),
        SizedBox(height: 15),
        BuildPointButton(color: color, text: "2 Point", onPressed: onAdd2),
        SizedBox(height: 15),
        BuildPointButton(color: color, text: "3 Point", onPressed: onAdd3),
      ],
    );
  }
}

class BuildTeamPointItem extends StatelessWidget {
  const BuildTeamPointItem({
    super.key,
    required this.teamBPoints,
    required this.color,
  });

  final int teamBPoints;
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
          "$teamBPoints",
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
          gradient: LinearGradient(colors: [color, color.withOpacity(.7)]),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(.4),
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
              color: Colors.white,
              letterSpacing: .5,
            ),
          ),
        ),
      ),
    );
  }
}
