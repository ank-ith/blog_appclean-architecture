part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoding extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uId;

  const AuthSuccess(this.uId);
}

final class AuthFailure extends AuthState {
  final String message;

  const AuthFailure(this.message);
}
