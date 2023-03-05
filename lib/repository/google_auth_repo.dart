import 'dart:developer';

import 'package:di_project/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@dev
@named
@Singleton(as: AuthRepo)
class GoogleAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo Dev";
  @override
  void login(String email, String password) {
    log('$TAG: user logged in with $email and $password');
  }

  @override
  void logout() {
    log('$TAG: user logged out');

  }
  @override
  void deleteUser() {
    log('$TAG: user deleted');
  }

  @override
  void signUp() {
    log('$TAG: user signUp');
  }
}
