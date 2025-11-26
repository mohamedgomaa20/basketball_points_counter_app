import 'package:basketball_points_counter_app/widgets/build_team_card.dart';
import 'package:flutter/material.dart';

class BasketballPointsCounterScreen extends StatefulWidget {
  const BasketballPointsCounterScreen({super.key});

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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_basketball,
                      color: Color(0xFFe94560),
                      size: 32,
                    ),
                    SizedBox(width: 12),
                    Text(
                      "BasketBall Score",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: BuildTeamCard(
                        teamName: "Team A",
                        teamPoints: teamAPoints,
                        color: Color(0xFFe94560),
                        onAdd1: () => addPoints(teamName: "A", point: 1),
                        onAdd2: () => addPoints(teamName: "A", point: 2),
                        onAdd3: () => addPoints(teamName: "A", point: 3),
                      ),
                    ),

                    Container(
                      width: 2,
                      height: 400,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color(0xFFe94560).withOpacity(0.3),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: BuildTeamCard(
                        teamName: "Team B",
                        teamPoints: teamBPoints,
                        color: Color(0xFF4ecca3),
                        onAdd1: () => addPoints(teamName: "B", point: 1),
                        onAdd2: () => addPoints(teamName: "B", point: 2),
                        onAdd3: () => addPoints(teamName: "B", point: 3),
                      ),
                    ),
                  ],
                ),
              ),

              InkWell(
                onTap: resetPoints,
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
                        color: Color(0xFFe94560).withOpacity(0.4),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
