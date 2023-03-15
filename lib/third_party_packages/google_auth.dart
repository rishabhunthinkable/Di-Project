import 'dart:developer';

class GoogleAuth{
  static const String TAG = "GoogleAuth";
  GoogleAuth._();

  static Future<GoogleAuth> instance()async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: Service initialised');
    return GoogleAuth._();
  }
  Future<void> login(String email, String password) async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: user logged in with $email and $password');
  }

  Future<void> logout() async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: user logged out');
  }

  Future<void> signUp() async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: user signUp');
  }

  Future<void> deleteUser() async{
    await Future.delayed(const Duration(seconds: 1));
    print('$TAG: user deleted');
  }
}