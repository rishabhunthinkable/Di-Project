import 'package:di_project/repository/auth_repo.dart';

import '../third_party_packages/google_auth.dart';

class GoogleAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo";
  GoogleAuth _googleAuth;
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
  void signUp() {
    _googleAuth.signUp();
  }

  @override
  void deleteUser() {
    _googleAuth.deleteUser();
  }
}
