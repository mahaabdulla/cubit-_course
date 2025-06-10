part of 'conter_bloc.dart';

@immutable
sealed class ConterEvent {}

class IncreamentEvent extends ConterEvent {}

class DecremntEvent extends ConterEvent {}
