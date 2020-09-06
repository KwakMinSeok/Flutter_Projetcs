import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';


class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  //sign in anonimous,
  Future signInAnonimous() async {
    try{
      UserCredential userCredential = await _auth.signInAnonymously();
      User user = userCredential.user;
      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }
  //sign in email,
  //register with email$password
  //sign out
}