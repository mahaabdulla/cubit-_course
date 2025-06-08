//

sealed class CounterState {
  final int count; // ليش مررناه عشان يكون عندي حالة واحدة بس اتحكم فيها
  CounterState(this.count);
}

class CounterInit extends CounterState {
  CounterInit() : super(0);
}

class CounterUpdare extends CounterState {
  CounterUpdare(super.count);
}
