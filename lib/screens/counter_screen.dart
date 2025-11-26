import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:basketball_points_counter_app/enums/team_enum.dart';
import 'package:basketball_points_counter_app/widgets/build_team_card.dart';
import 'package:basketball_points_counter_app/widgets/custom_divider.dart';
import 'package:basketball_points_counter_app/widgets/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/gradient_background.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              HeaderSection(),
              BlocConsumer<CounterCubit, CounterState>(
                listener: (context, state) {},
                builder: (context, state) {
                  final cubit = CounterCubit.get(context);
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: BuildTeamCard(
                                  teamName: "Team A",
                                  teamPoints: cubit.teamAPoints,
                                  color: Color(0xFFe94560),
                                  onAdd1: () => cubit.incrementPoints(
                                    teamName: TeamEnum.A,
                                    point: 1,
                                  ),
                                  onAdd2: () => cubit.incrementPoints(
                                    teamName: TeamEnum.A,
                                    point: 2,
                                  ),
                                  onAdd3: () => cubit.incrementPoints(
                                    teamName: TeamEnum.A,
                                    point: 3,
                                  ),
                                ),
                              ),
                              CustomDivider(),

                              Expanded(
                                child: BuildTeamCard(
                                  teamName: "Team B",
                                  teamPoints: cubit.teamBPoints,
                                  color: Color(0xFF4ecca3),
                                  onAdd1: () => cubit.incrementPoints(
                                    teamName: TeamEnum.B,
                                    point: 1,
                                  ),
                                  onAdd2: () => cubit.incrementPoints(
                                    teamName: TeamEnum.B,
                                    point: 2,
                                  ),
                                  onAdd3: () => cubit.incrementPoints(
                                    teamName: TeamEnum.B,
                                    point: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.all(30),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 50,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xFFe94560), Color(0xFFf4567c)],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(
                                    0xFFe94560,
                                  ).withValues(alpha: 0.4),
                                  blurRadius: 20,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                  size: 24,
                                ),
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
