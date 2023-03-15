import 'package:di_project/repository/auth_repo.dart';

import '../third_party_packages/google_auth.dart';

class GoogleAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo";
  GoogleAuth _googleAuth;
  GoogleAuthRepo(this._googleAuth);
  @override
  Future<void> login(String email, String password)async {
   await _googleAuth.login(email, password);
  }

  @override
  Future<void> logout() async{
   await _googleAuth.logout();
  }

  @override
  Future<void> signUp() async{
    await _googleAuth.signUp();
  }

  @override
  Future<void> deleteUser() async{
    await _googleAuth.deleteUser();
  }
}
