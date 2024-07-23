import 'package:furniture_shop/data/remote/auth_remote.dart';

class AuthRepository {
  final AuthRemote authRemote;

  AuthRepository(this.authRemote);

  checkUserLogged() => authRemote.checkCurrentUser();
  logout() => authRemote.logout();
  signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      authRemote.login(email, password);

  createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      authRemote.register(email, password);
}
