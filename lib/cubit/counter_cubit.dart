import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/cubit/counter_state.dart';

// sealdClass
class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
    : super(CounterInit()); // أول ما ينشئ  objct يعطيه الحالة ال init

  void increamentCount() => emit(CounterUpdare(state.count + 1));

  void decreamentCount() => emit(CounterUpdare(state.count - 1));
}
