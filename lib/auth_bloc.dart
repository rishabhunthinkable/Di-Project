import 'package:di_project/repository/auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';


class AuthBloc {
  ///A service wrapper which provides a way to manage user state inside application.
  final AuthRepo _authRepo;

  AuthBloc(this._authRepo);

  void loginUser(String email, String password) {
    _authRepo.login(email, password);
  }

  void logoutUser() {
    _authRepo.logout();
  }

  void deleteUser() {
    _authRepo.deleteUser();
  }

  void signUpUser() {
    _authRepo.signUp();
  }
}
