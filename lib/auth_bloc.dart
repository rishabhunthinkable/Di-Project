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
  Future<void> loginUser(String name,String email)async{
    _authRepo.login(name,email);
  }

  Future<void> logoutUser()async{
    _authRepo.logout();
  }

  Future<void> deleteUser()async{
    _authRepo.delete();
  }

  Future<void> signUpUser()async{
    _authRepo.signUp();
  }

}

class FirebaseAuthBloc {
  ///A service wrapper which provides a way to manage user state inside application.
  late FirebaseAuthRepo _authRepo;
  FirebaseAuthBloc(){
    _authRepo = FirebaseAuthRepo();
  }
  Future<void> loginUser(String email,String password)async{
   await _authRepo.login(email,password);
  }

  Future<void> logoutUser()async{
    await _authRepo.logout();
  }

  Future<void> deleteUser()async{
    await _authRepo.delete();
  }

  Future<void> signUpUser()async{
    await _authRepo.signUp();
  }

}
