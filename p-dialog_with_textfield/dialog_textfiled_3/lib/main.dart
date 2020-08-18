import 'package:flutter/material.dart';
import 'mynewcard2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "homepage"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController mynewcontroller = TextEditingController();
  List<String> mylist = [];
  String mytext;

  //shownewdialogstart
  shownewdialod() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
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
                    SizedBox(
                      width: 100,
                    ),
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
                    SizedBox(width: 20)
                  ],
                )
              ],
            ));
  }
//shownewdialog end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton (
          onPressed: ()=> _MyNewDialogState(myhilist:mylist,myhitext: mytext).showhidialod(context)
            //이거 해결하기 나중에 위젯으로 불러서 해결하기
          
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
Widget BuildMyDialog(p,q)=> MyNewDialog(mytesthilist:p,mytesthitext: q);
//두개로 나뉘서 전달 가능

class MyNewDialog extends StatefulWidget {
var mytesthitext;
List mytesthilist;
MyNewDialog({this.mytesthilist,this.mytesthitext});
  @override
  _MyNewDialogState createState() => _MyNewDialogState(myhilist: mytesthilist,myhitext: mytesthitext);
}

class _MyNewDialogState extends State<MyNewDialog> {
TextEditingController myhicontroller = TextEditingController();
var myhitext;
List myhilist;
showhidialod(BuildContext context){
  print('inside show hi dialog');
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("DIALOG"),
              content: TextField(
                controller: myhicontroller,
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
                    SizedBox(
                      width: 100,
                    ),
                    RaisedButton(
                      child: Text('send'),
                      onPressed: () {
                        setState(() {
                          myhitext = myhicontroller.text;
                          Navigator.pop(context);
                          myhilist.add(myhitext);
                        });
                      },
                    ),
                    SizedBox(width: 20)
                  ],
                )
              ],
            ));
  }
_MyNewDialogState({this.myhilist,this.myhitext});
  Widget build(BuildContext context){
    return Center(
      child: showhidialod(context),
    );
    
  }
    
  }

