import 'package:di_project/third_party_packages/google_auth.dart';

class GoogleAuthRepo{
  GoogleAuth? _googleAuth;

  static const String TAG = "GoogleAuthRepo";
  void login(String email,String password)async{
    await (await _getGoogleAuth()).login(email, password);
  }
  void logout()async{
    await (await _getGoogleAuth()).logout();
  }
  void delete()async{
    await (await _getGoogleAuth()).deleteUser();
  }
  void signUp()async{
    await (await _getGoogleAuth()).signUp();
  }

  Future<GoogleAuth> _getGoogleAuth()async{
    _googleAuth ??= await GoogleAuth.instance();
     return _googleAuth!;
  }
}