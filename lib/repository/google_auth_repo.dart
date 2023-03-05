import 'dart:developer';

import 'package:di_project/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

import '../third_party_packages/google_auth.dart';

@dev
@named
@Singleton(as: AuthRepo)
class GoogleAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo Dev";
  final GoogleAuth _googleAuth;

  GoogleAuthRepo(this._googleAuth);

  @override
  void login(String email, String password) {
    _googleAuth.login(email, password);
  }

  @override
  void logout() {
    _googleAuth.logout();
  }

  @override
  void deleteUser() {
    _googleAuth.deleteUser();
  }

  @override
  void signUp() {
    _googleAuth.signUp();
  }
}
