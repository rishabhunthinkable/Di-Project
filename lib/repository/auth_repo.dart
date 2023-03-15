abstract class AuthRepo{
  Future<void> login(String email,String password);
  Future<void> logout();
  Future<void> signUp();
  Future<void> deleteUser();
}