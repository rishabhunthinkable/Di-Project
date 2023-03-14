import 'dart:developer';

import 'package:di_project/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

import '../third_party_packages/firebase_auth.dart';

@dev
@named
@Singleton(as: AuthRepo)
class FirebaseAuthRepo extends AuthRepo {
  static const String TAG = "FirebaseAuthRepo Dev";
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepo(this._firebaseAuth);

  @override
  Future<void> login(String email, String password) async {
    await _firebaseAuth.login(email, password);
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.logout();
  }

  @override
  Future<void> signUp() async {
    await _firebaseAuth.signUp();
  }

  @override
  Future<void> deleteUser() async {
    await _firebaseAuth.deleteUser();
  }
}
