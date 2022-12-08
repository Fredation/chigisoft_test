import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String token;

  const User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.image,
    required this.token,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        gender,
        token,
        image,
      ];
}
