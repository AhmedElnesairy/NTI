
import 'model.dart';

class CounterRepository {
  CounterModel _counter = CounterModel(value: 0);

  CounterModel getCounter() {
    return _counter;
  }

  CounterModel increment() {
    _counter = _counter.copyWith(value: _counter.value + 1);
    return _counter;
  }

  CounterModel reset() {
    _counter = CounterModel(value: 0);
    return _counter;
  }
}
