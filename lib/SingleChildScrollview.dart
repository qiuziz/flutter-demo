import 'package:flutter/material.dart';

class SingleChildScrollViewRoute extends StatefulWidget {
  @override
  _SingleChildScrollViewRouteState createState() => new _SingleChildScrollViewRouteState();
}

class _SingleChildScrollViewRouteState extends State<SingleChildScrollViewRoute> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return new Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: str.split("")
              .map((c) => Text(c, textScaleFactor: 2.0,))
              .toList()
            ),
          ),
        ),
      ),
    ); 
   
  }
}