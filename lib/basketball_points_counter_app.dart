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
                      Text("Team A", style: TextStyle(fontSize: 32)),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: Text(
                          "$teamAPoints",
                          style: TextStyle(fontSize: 100),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          addPoints(teamName: "A", point: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          addPoints(teamName: "A", point: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          addPoints(teamName: "A", point: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 420,
                    child: VerticalDivider(indent: 30, endIndent: 20),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team B", style: TextStyle(fontSize: 32)),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),

                        child: Text(
                          "$teamBPoints",
                          style: TextStyle(fontSize: 100),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          addPoints(teamName: "B", point: 1);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          addPoints(teamName: "B", point: 2);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          addPoints(teamName: "B", point: 3);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
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
