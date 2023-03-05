import 'package:di_project/repository/auth_repo.dart';

import '../third_party_packages/firebase_auth.dart';

class FirebaseAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo";
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthRepo(this._firebaseAuth);

  @override
  void login(String email, String password) {
    _firebaseAuth.login(email, password);
  }

  @override
  void logout() {
    _firebaseAuth.logout();
  }

  @override
  void signUp() {
    _firebaseAuth.signUp();
  }

  @override
  void deleteUser() {
    _firebaseAuth.deleteUser();
  }
}
