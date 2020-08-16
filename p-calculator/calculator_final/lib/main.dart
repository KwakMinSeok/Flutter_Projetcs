import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  String basictext ="";
  int firstnum;
  int secondnum;
  String res;
  String operation;
  void pressbutton(String gettext) {
//gettext=mytext로 부터 받은 값
    if (gettext == "C") {
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (gettext == "+" ||
        gettext == "-" ||
        gettext == "/" ||
        gettext == "X") {
        
        firstnum=int.parse(basictext);
        res="";
        gettext=operation;
        }
        else if(gettext=="="){
          secondnum=int.parse(basictext);
          if(operation=="+"){
            res=(firstnum~/secondnum).toString();
          }
          if(operation=="-"){
            res=(firstnum~/secondnum).toString();
          }
          if(operation=="/"){
            res=(firstnum~/secondnum).toString();
          }
          if(operation=="X"){
            res=(firstnum~/secondnum).toString();
          }
          else{
            res=int.parse(basictext+gettext).toString();
          }

        }
        setState(() {
         basictext=res;
        });
  }

  Widget makebutton(String mytext) {
    return Expanded(
      child: RaisedButton(
        onPressed: () =>
          pressbutton(mytext)
        ,
        child: Text(mytext),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text("$basictext"),
              color: Colors.amber,
            ),
          ),
          Row(
            children: <Widget>[
              makebutton("9"),
              makebutton("8"),
              makebutton("7"),
              makebutton("+"),
            ],
          ),
          Row(
            children: <Widget>[
              makebutton("6"),
              makebutton("5"),
              makebutton("4"),
              makebutton("-"),
            ],
          ),
          Row(
            children: <Widget>[
              makebutton("3"),
              makebutton("2"),
              makebutton("1"),
              makebutton("X"),
            ],
          ),
          Row(
            children: <Widget>[
              makebutton("C"),
              makebutton("0"),
              makebutton("="),
              makebutton("/"),
            ],
          ),
        ],
      ),
    );
  }
}
