import 'dart:developer';

class GoogleAuth{
  static const String TAG = "GoogleAuth";
  GoogleAuth._();

  static Future<GoogleAuth> instance()async{
    await Future.delayed(const Duration(seconds: 1));
    log('$TAG: Service initialised');
    return GoogleAuth._();
  }
}