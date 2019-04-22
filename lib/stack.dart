import 'package:flutter/material.dart';

class StackTestRoute extends StatefulWidget {
  @override
  _StackTestRouteState createState() => new _StackTestRouteState();
}

class _StackTestRouteState extends State<StackTestRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Stack'),
        backgroundColor: Colors.transparent,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 18.0,
              child: Text('I am qiuz'),
            ),
            Container(
              child: Text('Hello qiuz', style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              top: 18.0,
              child: Text('Your friend'),
            )
          ],
        ),
      )
    );
   
  }
}