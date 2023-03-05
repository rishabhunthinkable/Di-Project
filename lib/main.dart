
import 'package:di_project/auth_bloc.dart';
import 'package:di_project/repository/auth_repo.dart';
import 'package:di_project/repository/firebase_auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';

void main() async{
  print('Main Started');
  AuthRepo googleAuthRepo = GoogleAuthRepo();
  // AuthRepo firebaseAuthRepo = FirebaseAuthRepo();
  AuthBloc bloc = AuthBloc(googleAuthRepo);
  await Future.delayed(const Duration(seconds: 1));
  bloc.loginUser("r@yahoo.co", "22212121");
  await Future.delayed(const Duration(seconds: 1));
  bloc.logoutUser();
  await Future.delayed(const Duration(seconds: 1));
  bloc.signUpUser();
  await Future.delayed(const Duration(seconds: 1));
  bloc.deleteUser();
  print('Main Ended');
}

