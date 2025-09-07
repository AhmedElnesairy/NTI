
import '../model/model.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterUpdated extends CounterState {
  final CounterModel counter;
  CounterUpdated(this.counter);
}
