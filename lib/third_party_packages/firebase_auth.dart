import 'dart:developer';

class FirebaseAuth{
  static const String TAG = "FirebaseAuth";

  FirebaseAuth._();

  static Future<FirebaseAuth> instance()async{
    await Future.delayed(const Duration(seconds: 1));
    log('$TAG: Service initialised');
    return FirebaseAuth._();
  }
}