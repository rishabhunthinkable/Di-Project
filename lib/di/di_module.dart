import 'package:di_project/third_party_packages/google_auth.dart';
import 'package:injectable/injectable.dart';

import '../third_party_packages/firebase_auth.dart';

@module
abstract class DiModule{

  @lazySingleton
  Future<FirebaseAuth> get firebaseAuth async => await FirebaseAuth.instance();

  @lazySingleton
  Future<GoogleAuth> get googleAuth async => await GoogleAuth.instance();

}
