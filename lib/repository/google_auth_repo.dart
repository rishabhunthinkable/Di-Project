class GoogleAuthRepo{
  static const String TAG = "GoogleAuthRepo";
  void login(String email,String password){
    print('$TAG Logged in with $email and $password');
  }
  void logout(){
    print('$TAG Logged out');
  }
  void delete(){
    print('$TAG user deleted');
  }
  void signUp(){
    print('$TAG user signup');
  }
}