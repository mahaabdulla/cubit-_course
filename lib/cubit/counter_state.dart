//

import 'package:equatable/equatable.dart';

sealed class CounterState extends Equatable {
  final int count; // ليش مررناه ؟ عشان يكون عندي حالة واحدة بس اتحكم فيها
  CounterState(this.count);
}

class CounterInit extends CounterState {
  CounterInit() : super(0);

  @override

  List<Object?> get props => [count];
}

class CounterUpdare extends CounterState {
  CounterUpdare(super.count);

  @override

  List<Object?> get props => [count];
}
