import 'package:flutter/material.dart';

class WillPopScopeRoute extends StatefulWidget {
  @override
  _WillPopScopeRouteState createState() => new _WillPopScopeRouteState();
}

class _WillPopScopeRouteState extends State<WillPopScopeRoute> {
  DateTime _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('ScrollController'),
      ),
      body: new WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: Text('1秒内连续按两次返回键退出'),
        ),
      )
    ); 
   
  }
}