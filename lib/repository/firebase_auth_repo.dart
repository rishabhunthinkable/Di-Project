import '../third_party_packages/firebase_auth.dart';

class FirebaseAuthRepo{
  FirebaseAuth? _firebaseAuth;
  Future<FirebaseAuth> _getFirebaseAuth()async{
    return _firebaseAuth ??= await FirebaseAuth.instance();
  }
  static const String TAG = "FirebaseAuthRepo";
  Future<void> login(String email,String password)async{
    await (await _getFirebaseAuth()).login(email, password);
  }
  Future<void> logout()async{
    await (await _getFirebaseAuth()).logout();
  }
  Future<void> delete()async{
    await (await _getFirebaseAuth()).deleteUser();
  }
  Future<void> signUp()async{
    await (await _getFirebaseAuth()).signUp();
  }
}