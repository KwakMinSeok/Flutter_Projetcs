import 'package:flutter/material.dart';
import 'mynewcard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title:"homepage"),
    );
  }
}

class MyHomePage extends StatefulWidget {
final title;
MyHomePage({Key key ,this.title}):super(key:key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController mynewcontroller = TextEditingController();
  List<String> mylist = [];
  String mytext;
  shownewdialod(){
    return showDialog(context: context,builder: (context)=>
    AlertDialog(
     title: Text("DIALOG"),
              content: TextField(
                controller: mynewcontroller,
              ),
              actions: <Widget>[
                
                Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("close"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 100,),
                    RaisedButton(
                      child: Text('send'),
                      onPressed: () {
                        setState(() {
                          mytext = mynewcontroller.text;
                          Navigator.pop(context);
                          mylist.add(mytext);
                        });
                      },
                    ),
                   SizedBox(width:20 )
                  ],
                )
              ], 
    )
    );
  }
  @override
  void dispose() {
    super.dispose();
    mynewcontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          shownewdialod();
            //이거 해결하기 나중에 위젯으로 불러서 해결하기
          },
        ),
        body: ListView(
          children: <Widget>[
            Column(
                children: mylist
                    .map((f) => MyCard(
                          a: f,
                          delete: () {
                            setState(() {
                              mylist.remove(f);
                            });
                          },
                        ))
                    .toList())
          ],
        ));
  }
}

Widget BuildCard(context) => MyCard(a: context);