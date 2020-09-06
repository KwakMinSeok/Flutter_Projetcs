import 'package:firebase_3/screens/authenticationscreen/authenticationpage.dart';
import 'package:firebase_3/screens/homescreen/homepage.dart';
import 'package:flutter/material.dart';

class WrapperPage extends StatefulWidget {
  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    return AuthenticationPage();
  }
}