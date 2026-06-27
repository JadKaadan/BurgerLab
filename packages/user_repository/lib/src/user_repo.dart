import 'package:user_repository/user_repository.dart';

abstract class UserRepository { // function for main lib folder 


  Stream <MyUser?> get user;


  Future <MyUser> signUp (MyUser myUser, String password);

  Future<void> setUserData(MyUser user);

  Future<void> signIn(String email, String password);
  Future<void> Logout();

}