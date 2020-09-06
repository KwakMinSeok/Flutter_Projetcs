import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_3/models/userpage.dart';
class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on firebase user 유저 정보의 uid만 가져옴 USerAnon class
  //sign in anonimous
  // auth change stream
 Stream<User> get gettinguser{
   return _auth.authStateChanges().map((User user) => )
 }
  Future<dynamic> siginInAnon() async{
    try{
    UserCredential result = await _auth.signInAnonymously();
    User user = result.user;
    return user.uid;
    //User 클래스의 uid를 바로 접근 할 수
    }catch(e){
      print("error:{${e.toString()}");
    }
  }

  //sign in e-mail and password

  //registar with email & password

  //sign out

}