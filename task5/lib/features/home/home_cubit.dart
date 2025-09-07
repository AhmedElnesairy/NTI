

import '../model/data.dart';
import 'home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  final CounterRepository repository;

  CounterCubit(this.repository) : super(CounterInitial()) {
    loadCounter();
  }

  void loadCounter() {
    emit(CounterUpdated(repository.getCounter()));
  }

  void increment() {
    emit(CounterUpdated(repository.increment()));
  }

  void reset() {
    emit(CounterUpdated(repository.reset()));
  }
}
