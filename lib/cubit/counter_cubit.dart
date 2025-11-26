import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:basketball_points_counter_app/enums/team_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementPoints({required TeamEnum teamName, required int point}) {
    if (teamName == TeamEnum.A) {
      teamAPoints += point;
      emit(CounterAIncrementState());
    } else if (teamName == TeamEnum.B) {
      teamBPoints += point;
      emit(CounterBIncrementState());
    }
  }

  void resetPoints() {
    teamBPoints = 0;
    teamAPoints = 0;
    emit(CounterResetState());
  }
}
