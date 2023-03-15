
import 'dart:developer';

import 'package:di_project/blocs/auth_bloc.dart';
import 'package:di_project/repository/auth_repo.dart';
import 'package:di_project/repository/firebase_auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di/di.dart';

void main() async{
  configureDependencies();
  print('Main Started');
  AuthBloc bloc = getIt<AuthBloc>();
  bloc.setAuthenticationService(await getIt.getAsync<AuthRepo>(instanceName: const Named.from(GoogleAuthRepo).type.toString()));
  await bloc.loginUser("r@yahoo.co", "22212121");
  await bloc.logoutUser();
  await bloc.signUpUser();
  await bloc.deleteUser();
  print('Main Ended');
}


@injectable
class SharedPrefHelper{
  late SharedPreferences preference;
  SharedPrefHelper(this.preference);
}