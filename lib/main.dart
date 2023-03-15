
import 'package:di_project/auth_bloc.dart';

void main() async{
  print('Main Started');
  // GoogleAuthBloc bloc = GoogleAuthBloc();
  FirebaseAuthBloc bloc = FirebaseAuthBloc();
  await bloc.loginUser("r@yahoo.co", "22212121");
  await bloc.logoutUser();
  await bloc.signUpUser();
  await bloc.deleteUser();
  print('Main Ended');
}

