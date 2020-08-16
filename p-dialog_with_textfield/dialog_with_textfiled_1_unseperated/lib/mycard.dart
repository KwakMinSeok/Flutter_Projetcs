import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
final a;
final Function delete;
MyCard({this.a,this.delete});
  Widget build(BuildContext context) {
   return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(a),
            RaisedButton.icon(
              icon: Icon(Icons.delete),
              label: Text('delete card'),
              color: Colors.white,
              elevation: 0,
              onPressed: delete,
            )
          ],
        ),
      ),
    );
  }
}