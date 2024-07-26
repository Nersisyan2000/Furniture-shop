import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/data/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> checkUserLogged() async {
    emit(AuthLoading());
    try {
      final isLoggedIn = await getIt<AuthRepository>().checkUserLogged();
      if (isLoggedIn != null && isLoggedIn != false) {
        debugPrint('$isLoggedIn isLoggedIn');
        emit(AuthAuthenticated());
      } else {
        emit(AuthUnauthenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> logout() async {
    await getIt<AuthRepository>().logout();
    emit(AuthUnauthenticated());
  }
}
