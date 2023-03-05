import 'package:di_project/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';
@named
@Singleton(as: AuthRepo)
class GoogleAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo";
  @override
  void login(String email, String password) {
    print('$TAG: user logged in with $email and $password');
  }

  @override
  void logout() {
    print('$TAG: user logged out');

  }
  @override
  void deleteUser() {
    print('$TAG: user deleted');
  }

  @override
  void signUp() {
    print('$TAG: user signUp');
  }
}
