import 'dart:developer';

class FirebaseAuth{
  static const String TAG = "FirebaseAuth";

  FirebaseAuth._();

  static Future<FirebaseAuth> instance()async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: Service initialised');
    return FirebaseAuth._();
  }
  void login(String email, String password) {
    print('$TAG: user logged in with $email and $password');
  }

  void logout() {
    print('$TAG: user logged out');
  }

  void signUp() {
    print('$TAG: user signUp');
  }

  void deleteUser() {
    print('$TAG: user deleted');
  }
}