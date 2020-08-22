import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  List<dynamic> newbluetiles = [];
  IconPage({this.newbluetiles});
  @override
  _IconPageState createState() => _IconPageState(bluetiles: newbluetiles);
}

class _IconPageState extends State<IconPage> {
  List<dynamic> bluetiles = [];
  _IconPageState({this.bluetiles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon page'),
      ),
      body: Column(
        children: [
          Container(
            height: 735,
            width: 500,
            child: ListView(
                children: bluetiles
                    .map((e) => Card(
                      elevation: 12,
                          child: ListTile(
                            title: Text(e.toString()),
                          ),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
