
import 'package:di_project/auth_bloc.dart';
import 'package:di_project/repository/auth_repo.dart';
import 'package:di_project/repository/firebase_auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';
import 'package:di_project/third_party_packages/firebase_auth.dart';
import 'package:di_project/third_party_packages/google_auth.dart';

void main() async{
  print('Main Started');
  GoogleAuth _googleAuthPackage = await GoogleAuth.instance();
  AuthRepo googleAuthRepo = GoogleAuthRepo(_googleAuthPackage);
  // FirebaseAuth _firebaseAuthPackage = await FirebaseAuth.instance();
  // AuthRepo firebaseAuthRepo = FirebaseAuthRepo(_firebaseAuthPackage);
  AuthBloc bloc = AuthBloc(googleAuthRepo);
  await bloc.loginUser("r@yahoo.co", "22212121");
  await bloc.logoutUser();
  await bloc.signUpUser();
  await bloc.deleteUser();
  print('Main Ended');
}

