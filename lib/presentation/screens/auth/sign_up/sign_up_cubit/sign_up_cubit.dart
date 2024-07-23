import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/exceptions/my_exception.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/data/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpCubit() : super(SignUpInitial()) {
    fullNameController.addListener(validateForm);
    emailController.addListener(validateForm);
    passwordController.addListener(validateForm);
  }

  bool _isFullNameValid = false;
  bool _isEmailValid = false;
  bool _isPasswordValid = false;
  String? _fullNameError;
  String? _emailError;
  String? _passwordError;

  void validateForm() {
    final fullName = fullNameController.text;
    final email = emailController.text;
    final password = passwordController.text;

    _fullNameError = fullName.isNotEmpty ? null : "Full name cannot be empty";
    _emailError = RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
            .hasMatch(email)
        ? null
        : "Invalid email format";
    _passwordError = password.length >= 6
        ? null
        : "Password must be at least 6 characters long";

    _isFullNameValid = _fullNameError == null;
    _isEmailValid = _emailError == null;
    _isPasswordValid = _passwordError == null;

    emit(SignUpValidation(
      isFormValid: _isFullNameValid && _isEmailValid && _isPasswordValid,
      fullNameError: _fullNameError,
      emailError: _emailError,
      passwordError: _passwordError,
    ));
  }

  Future<void> signUp() async {
    if (!_isFullNameValid || !_isEmailValid || !_isPasswordValid) return;

    emit(SignUpLoading());
    try {
      final result =
          await getIt<AuthRepository>().createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if (result) {
        emit(SignUpSuccess());
      } else {
        emit(SignUpFailure("Registration failed. Please try again."));
      }
    } on MyException catch (e) {
      emit(SignUpFailure(
          e.message)); // Assuming MyException has a message property
    } catch (e) {
      emit(SignUpFailure("An unexpected error occurred. Please try again."));
    }
  }

  Future<void> logout() async {
    debugPrint('hello');
    try {
      await getIt<AuthRepository>().logout();
      emit(SignUpLoggedOut());
    } catch (e) {
      emit(SignUpFailure("Logout failed. Please try again."));
    }
  }

  @override
  Future<void> close() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
