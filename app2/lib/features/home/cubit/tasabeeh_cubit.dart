import 'package:app2/features/home/cubit/tasabeeh_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasbeehCubit extends Cubit<TasbeehState> {
  TasbeehCubit() : super(const TasbeehState());

  final List<String> azkar = ["سبحان الله", "الحمد لله", "الله أكبر"];
  final List<String> images = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
  ];

  void increment() {
    int newCount = state.count + 1;
    int newPhase = state.phaseIndex;
    int newImage = state.imageIndex;

    if (newCount >= 33) {
      newCount = 0;
      newPhase = (state.phaseIndex + 1) % azkar.length;
    }

    emit(state.copyWith(count: newCount, phaseIndex: newPhase, imageIndex: newImage));
  }

  void reset() {
    emit(const TasbeehState());
  }

  void changeImage(int index) {
    emit(state.copyWith(imageIndex: index));
  }

  String get currentZikr => azkar[state.phaseIndex];
  String get currentImage => images[state.imageIndex];
}
