part of 'sign_in_cubit.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInValidation extends SignInState {
  final bool isFormValid;
  final String? emailError;
  final String? passwordError;

  SignInValidation({
    required this.isFormValid,
    this.emailError,
    this.passwordError,
  });
}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailure extends SignInState {
  final String error;

  SignInFailure(this.error);
}
