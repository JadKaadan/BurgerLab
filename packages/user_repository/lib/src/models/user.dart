import 'package:user_repository/src/entities/user_entity.dart';

export 'user.dart';



class MyUser{



  String userId;
  String email;
  String name;
  bool hasactivecart;


  MyUser({

    required this.userId,
    required this.email,
    required this.hasactivecart,
    required this.name,

  });


  static final empty  = MyUser(


    userId: '',
    email: '' ,
    name: '' ,
    hasactivecart: false,
  );


  MyUserEntity toEntity(){
    return MyUserEntity(
    userId: userId,
    email:email,
    name: name,
    hasactivecart: hasactivecart,
    );  
  }
 


 static MyUser fromEntity(MyUserEntity entity){
  return MyUser(
     userId: entity.userId,
    email:entity.email,
    name: entity.name,
    hasactivecart: entity.hasactivecart,
  );
 }



 String toString(){
  return 'MyUser : $userId,$name ,$email, $hasactivecart';
 }

}