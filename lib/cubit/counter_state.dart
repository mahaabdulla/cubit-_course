//

sealed class CounterState {
  // ليش مررناه عشان يكون عندي حالة واحدة بس اتحكم فيها
  final int count;
  CounterState(this.count);
}

class CounterInit extends CounterState {
  CounterInit() : super(0);
}

class CounterUpdare extends CounterState {
  CounterUpdare(super.count);
}
