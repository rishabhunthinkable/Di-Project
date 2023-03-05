import 'dart:developer';

class GoogleAuth{
  static const String TAG = "GoogleAuth";
  GoogleAuth._();

  static Future<GoogleAuth> instance()async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: Service initialised');
    return GoogleAuth._();
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