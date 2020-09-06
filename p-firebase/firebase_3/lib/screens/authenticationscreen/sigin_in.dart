import 'package:firebase_3/models/userpage.dart';
import 'package:firebase_3/services/authpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: Text('Sign in to Brew Crew'),

        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
          child: Column(
            children: [
              RaisedButton(
            child: Text('SignIn'),
            onPressed: () async{
           dynamic anonresult =await _authService.siginInAnon();
           
           if(anonresult==null){
             print('error sign in anonsign');
           }
           else{
             print('sign in anon');
             print(anonresult.toString());
             return null;
           }
            },
          ),
         
          
            ],
          )
        ),
    );
  }
}