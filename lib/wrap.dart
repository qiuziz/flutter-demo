import 'package:flutter/material.dart';

class WrapTestRoute extends StatefulWidget {
  @override
  _WrapTestRouteState createState() => new _WrapTestRouteState();
}

class _WrapTestRouteState extends State<WrapTestRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Flex'),
      ),
      body:  Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A'),),
            label: new Text('Hamilton'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M'),),
            label: new Text('Lafayette'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H'),),
            label: new Text('Mulligan'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J'),),
            label: new Text('Laurens'),
          ),
        ],
      )
    );
   
  }
}