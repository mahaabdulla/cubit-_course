import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/conter_state.dart';
import 'package:meta/meta.dart';
part 'conter_event.dart';

class ConterBloc extends Bloc<ConterEvent, CounterState> {
  ConterBloc() : super(CounterInit()) {
    on<IncreamentEvent>((event, emit) {
      emit(CounterUpdare(state.count + 1));
    });

    on<DecremntEvent>((event, emit) {
      emit(CounterUpdare(state.count - 1));
    });
  }
}
