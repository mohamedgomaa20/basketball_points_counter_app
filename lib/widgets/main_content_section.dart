import 'package:basketball_points_counter_app/widgets/reset_button_section.dart';
import 'package:basketball_points_counter_app/widgets/team_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';

class MainContentSection extends StatelessWidget {
  const MainContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        final cubit = CounterCubit.get(context);
        return Expanded(
          child: Column(
            children: [
              Expanded(child: TeamSection(cubit: cubit)),
              ResetButtonSection(onTap: () => cubit.resetPoints()),
            ],
          ),
        );
      },
    );
  }
}
