import 'package:di_project/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@dev
@injectable
class AuthBloc {
  ///A service wrapper which provides a way to manage user state inside application.
  AuthRepo? _authRepo;

  void setAuthenticationService(AuthRepo repo) {
    _authRepo = repo;
  }

  Future<void> loginUser(String email, String password) async {
    await _authRepo?.login(email, password);
  }

  Future<void> logoutUser() async {
    await _authRepo?.logout();
  }

  Future<void> deleteUser() async {
    await _authRepo?.deleteUser();
  }

  Future<void> signUpUser() async {
    await _authRepo?.signUp();
  }
}
