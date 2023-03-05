import 'package:di_project/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@dev
@injectable
class AuthBloc {
  ///A service wrapper which provides a way to manage user state inside application.
  AuthRepo? _authRepo;

  void setAuthenticationService(AuthRepo repo){
    _authRepo = repo;
  }

  void loginUser(String email, String password) {
    _authRepo?.login(email, password);
  }

  void logoutUser() {
    _authRepo?.logout();
  }

  void deleteUser() {
    _authRepo?.deleteUser();
  }

  void signUpUser() {
    _authRepo?.signUp();
  }
}
