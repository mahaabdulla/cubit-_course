import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void increamentCount() => emit(CounterUpdate(state.count + 1));

  void decreamentCount() => emit(CounterUpdate(state.count - 1));
}
