import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final int id;
  final String name;

  UserModel(this.id, this.name);

  @override
  List<Object?> get props => [id, name];
}
