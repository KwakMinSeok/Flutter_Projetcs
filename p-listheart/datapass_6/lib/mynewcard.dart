import 'package:flutter/material.dart';

class MyNewCard extends StatefulWidget {
  final newq;
  final Function newdelete;
  final Function addnewbluetile;
  MyNewCard({Key key,this.newq, this.newdelete, this.addnewbluetile}):super(key:key);
  @override
  _MyNewCardState createState() =>
      _MyNewCardState(q: newq, delete: newdelete, addbluetile: addnewbluetile);
}

class _MyNewCardState extends State<MyNewCard> {
  Color mycolor;
  bool colorvalue = true;
  final q;
  final Function delete;
  final Function addbluetile;
  _MyNewCardState({@required this.q, this.delete, this.addbluetile});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
        child: ListTile(
      title: Text(q.toString()),
      trailing: IconButton(
        icon: Icon(
          Icons.favorite,
          color: colorvalue == false ? Colors.red : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            addbluetile(colorvalue);
            if (colorvalue == true) {
              return colorvalue = false;
            }
            if (colorvalue == false) {
              return colorvalue = true;
            }
          });
        },
      ),
      onLongPress: () {
        delete();
      },
    ));
  }
}
