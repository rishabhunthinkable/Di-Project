import 'package:di_project/repository/auth_repo.dart';

import '../third_party_packages/firebase_auth.dart';

class FirebaseAuthRepo extends AuthRepo {
  static const String TAG = "GoogleAuthRepo";
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthRepo(this._firebaseAuth);

  @override
  Future<void> login(String email, String password) async{
   await _firebaseAuth.login(email, password);
  }

  @override
  Future<void> logout() async{
    await _firebaseAuth.logout();
  }

  @override
  Future<void> signUp() async{
    await _firebaseAuth.signUp();
  }

  @override
  Future<void> deleteUser() async{
    await _firebaseAuth.deleteUser();
  }
}
