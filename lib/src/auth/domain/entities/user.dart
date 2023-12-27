import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.fullname,
    required this.email,
    required this.contact,
    required this.avatar,
  });

  final int id;
  final String fullname;
  final String email;
  final String contact;
  final String avatar;

  @override
  List<Object?> get props => [id];
}
