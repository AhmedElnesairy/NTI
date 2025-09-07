import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model/lap_data.dart';
import '../model/lap_model.dart';

part 'lap_state.dart';

class LapCubit extends Cubit<LapState> {
  LapCubit() : super(LapInitial());

  LapData lap = LapData();

  getDataCubit() async {
    emit(LapLoading());
    emit(LapSuccess(lap: await lap.getData()));
  }
}
