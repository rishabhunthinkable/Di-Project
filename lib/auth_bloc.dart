import 'package:di_project/repository/firebase_auth_repo.dart';
import 'package:di_project/repository/google_auth_repo.dart';

///Both the classes are almost same with events as well as states.
///It breaks the DRY (don't repeat yourself) principle

class GoogleAuthBloc {
  ///A service wrapper which provides a way to manage user auth state inside application.
  late GoogleAuthRepo _authRepo;
  GoogleAuthBloc(){
    _authRepo = GoogleAuthRepo();
  }
  void loginUser(String name,String email){
    _authRepo.login(name,email);
  }

  void logoutUser(){
    _authRepo.logout();
  }

  void deleteUser(){
    _authRepo.delete();
  }

  void signUpUser(){
    _authRepo.signUp();
  }

}

class FirebaseAuthBloc {
  ///A service wrapper which provides a way to manage user state inside application.
  late FirebaseAuthRepo _authRepo;
  FirebaseAuthBloc(){
    _authRepo = FirebaseAuthRepo();
  }
  void loginUser(String email,String password){
    _authRepo.login(email,password);
  }

  void logoutUser(){
    _authRepo.logout();
  }

  void deleteUser(){
    _authRepo.delete();
  }

  void signUpUser(){
    _authRepo.signUp();
  }

}
