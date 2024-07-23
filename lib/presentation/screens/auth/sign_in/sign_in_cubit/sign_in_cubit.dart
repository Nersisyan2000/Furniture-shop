import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final AuthRepository authRepository;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignInCubit(this.authRepository) : super(SignInInitial()) {
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  bool _isEmailValid = false;
  bool _isPasswordValid = false;
  String? _emailError;
  String? _passwordError;

  void _validateForm() {
    final email = emailController.text;
    final password = passwordController.text;

    _emailError = RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
            .hasMatch(email)
        ? null
        : "Invalid email format";
    _passwordError = password.length >= 6
        ? null
        : "Password must be at least 6 characters long";

    _isEmailValid = _emailError == null;
    _isPasswordValid = _passwordError == null;

    emit(SignInValidation(
      isFormValid: _isEmailValid && _isPasswordValid,
      emailError: _emailError,
      passwordError: _passwordError,
    ));
  }

  Future<void> signIn() async {
    if (!_isEmailValid || !_isPasswordValid) return;

    emit(SignInLoading());
    try {
      final result = await authRepository.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if (result) {
        emit(SignInSuccess());
      } else {
        emit(SignInFailure("Login failed. Please check your credentials."));
      }
    } catch (e) {
      emit(SignInFailure(e.toString()));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
