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
    log('$TAG: user logged in with $email and $password');
  }

  @override
  void logout() {
    log('$TAG: user logged out');
  }

  @override
  void signUp() {
    log('$TAG: user signUp');
  }

  @override
  void deleteUser() {
    log('$TAG: user deleted');
  }
}

