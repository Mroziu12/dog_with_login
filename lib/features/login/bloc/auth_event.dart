part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogIn extends Equatable {
  final String email;
  final String password;

  AuthLogIn({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}
