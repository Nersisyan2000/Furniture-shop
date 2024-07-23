part of 'sign_up_cubit.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpValidation extends SignUpState {
  final bool isFormValid;
  final String? fullNameError;
  final String? emailError;
  final String? passwordError;

  SignUpValidation({
    required this.isFormValid,
    this.fullNameError,
    this.emailError,
    this.passwordError,
  });
}

class SignUpLoggedOut extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpFailure extends SignUpState {
  final String error;

  SignUpFailure(this.error);
}
