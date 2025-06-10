import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/cubit/counter_state.dart';

// Genirci Type<T>
class CounterCubit extends Cubit<String> {
  CounterCubit() : super(""); // أول ما ينشئ  objct يعطيه الحالة ال init

  // the cubit provid [state] يجيب اخر حالة   state.count == last state
  // emit  => Stream that tell ui there is a New State
  void increamentCount() => emit("Maha");
  //emit(state + 1);

  void decreamentCount() => emit("alattas");
  // emit(state - 1);
}
