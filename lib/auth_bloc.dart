import 'package:di_project/repository/auth_repo.dart';
import 'package:di_project/repository/firebase_auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';


class AuthBloc {
  ///A service wrapper which provides a way to manage user state inside application.
  late AuthRepo _authRepo;

  AuthBloc() {
    _authRepo = GoogleAuthRepo();
    // _authRepo = FirebaseAuthRepo();
  }

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
