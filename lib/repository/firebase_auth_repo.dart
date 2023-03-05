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

