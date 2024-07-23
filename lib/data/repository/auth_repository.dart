import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/data/remote/auth_remote.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRepository {
  checkUserLogged() => getIt<AuthRemote>().checkCurrentUser();
  logout() => getIt<AuthRemote>().logout();
  signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      getIt<AuthRemote>().login(email, password);

  createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      getIt<AuthRemote>().register(email, password);
}
