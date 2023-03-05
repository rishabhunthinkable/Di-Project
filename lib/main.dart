
import 'dart:developer';

import 'package:di_project/blocs/auth_bloc.dart';
import 'package:di_project/repository/auth_repo.dart';
import 'package:di_project/repository/firebase_auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';
import 'package:injectable/injectable.dart';

import 'di/di.dart';

void main() async{
  configureDependencies();
  log('Main Started');
  AuthBloc bloc = getIt<AuthBloc>();
  bloc.setAuthenticationService(await getIt.getAsync<AuthRepo>(instanceName: const Named.from(FirebaseAuthRepo).type.toString()));
  await Future.delayed(const Duration(seconds: 1));
  bloc.loginUser("r@yahoo.co", "22212121");
  await Future.delayed(const Duration(seconds: 1));
  bloc.logoutUser();
  await Future.delayed(const Duration(seconds: 1));
  bloc.signUpUser();
  await Future.delayed(const Duration(seconds: 1));
  bloc.deleteUser();
  log('Main Ended');
}

