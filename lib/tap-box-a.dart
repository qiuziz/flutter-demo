import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class TapBoxA extends StatefulWidget {
  TapBoxA({Key key}) : super(key: key);

  @override
  _TapBoxAState createState() => new _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext content) {
     return new Scaffold(
       appBar: AppBar(
         title: Text('TapBoxA'),
        //  backgroundColor: Colors.white,
       ),
       body: new GestureDetector(
         onTap: _handleTap,
         child: new Container(
           width: 200.0,
           height: 200.0,
           decoration: new BoxDecoration(
             color: _active ? Colors.lightGreen[700] : Colors.grey[600],
           ),
           child: new Center(
             child: Text(
               _active ? 'Active' : 'Inactice',
               style: new TextStyle(
                 fontSize: 32.0,
                 color: Colors.white
               ),
             ),
           ),
         ),
       )
        
     );
  }
}

