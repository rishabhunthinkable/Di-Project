import 'package:di_project/third_party_packages/google_auth.dart';
import 'package:injectable/injectable.dart';

import '../third_party_packages/firebase_auth.dart';
@dev
@module
abstract class DiModule{
  @dev
  @singleton
  Future<FirebaseAuth> get firebaseAuth async => await FirebaseAuth.instance();

  @dev
  @singleton
  Future<GoogleAuth> get googleAuth async => await GoogleAuth.instance();
  
}
