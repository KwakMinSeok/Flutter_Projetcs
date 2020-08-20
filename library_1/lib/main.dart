import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var mytext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlatButton(onPressed: (){
           setState(() {
             generateWordPairs().take(1).f  orEach((element) {
             mytext=element;
           });
           });
           print(mytext);
          }, child: Text('make word')),
          Text('$mytext')
        ],
      ),
    );
  }
}