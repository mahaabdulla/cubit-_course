import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Genirci Type<T>
class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
    : super(CounterInit()); // أول ما ينشئ  objct يعطيه الحالة ال init

  // the cubit provid [state] يجيب اخر حالة   state.count == last state
  // emit  => Stream that tell ui there is a New State
  void increamentCount() => emit(CounterUpdare(state.count + 1));

  void decreamentCount() => emit(CounterUpdare(state.count - 1));
}
