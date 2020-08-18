import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: ()=> MakeDialog(),
        ),
      ),
    );
  }
}

class MakeDialog extends StatefulWidget {
  @override
  _MakeDialogState createState() => _MakeDialogState();
}

class _MakeDialogState extends State<MakeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: AlertDialog(
        title: Text("DIALOG"),
             
                )
              

    );
  }
}