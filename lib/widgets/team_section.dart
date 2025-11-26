import 'package:flutter/cupertino.dart';

import '../cubit/counter_cubit.dart';
import '../enums/team_enum.dart';
import 'build_team_card.dart';
import 'custom_divider.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key, required this.cubit});

  final CounterCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BuildTeamCard(
            teamName: "Team A",
            teamPoints: cubit.teamAPoints,
            color: Color(0xFFe94560),
            onAdd1: () => cubit.incrementPoints(teamName: TeamEnum.A, point: 1),
            onAdd2: () => cubit.incrementPoints(teamName: TeamEnum.A, point: 2),
            onAdd3: () => cubit.incrementPoints(teamName: TeamEnum.A, point: 3),
          ),
        ),
        CustomDivider(),
        Expanded(
          child: BuildTeamCard(
            teamName: "Team B",
            teamPoints: cubit.teamBPoints,
            color: Color(0xFF4ecca3),
            onAdd1: () => cubit.incrementPoints(teamName: TeamEnum.B, point: 1),
            onAdd2: () => cubit.incrementPoints(teamName: TeamEnum.B, point: 2),
            onAdd3: () => cubit.incrementPoints(teamName: TeamEnum.B, point: 3),
          ),
        ),
      ],
    );
  }
}
