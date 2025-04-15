import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'conter_event.dart';
part 'conter_state.dart';

class ConterBloc extends Bloc<ConterEvent, ConterState> {
  ConterBloc() : super(ConterInitial()) {
    on<ConterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
