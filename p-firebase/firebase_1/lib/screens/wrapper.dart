import 'package:firebase_1/screens/authenticate/authenticate.dart';
import 'package:firebase_1/services/sign_in.dart';
import 'package:flutter/material.dart';
import 'home/home.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//return home이나, authentication위젯을 반환함.
  return Container(
    child: SignIn(),
  );
      
  }
}