import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void increamentCount() {
    // count ++;
    CounterUpdate(state.count + 1);
  }

  void decreamentCount() {
    CounterUpdate(state.count - 1);
  }
}
