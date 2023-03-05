
import 'package:di_project/auth_bloc.dart';

void main() async{
  print('Main Started');
  GoogleAuthBloc bloc = GoogleAuthBloc();
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

