import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool value) {
    setState(() {
      _active = value;
    });
  }

  @override
  Widget build(BuildContext content) {
    return new Container(
      child: new TapBoxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  TapBoxB({
    Key key,
    this.active: false,
    @required this.onChanged
  }) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }
  @override
  Widget build(BuildContext content) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('TapBoxB'),
      ),
      body: new GestureDetector(
             onTap: _handleTap,
             child: new Container(
               width: 200.0,
               height: 200.0,
               decoration: new BoxDecoration(
                 color: active ? Colors.lightGreen[700] : Colors.grey[600],
               ),
               child: new Center(
                 child: Text(
                   active ? 'Active' : 'Inactice',
                   style: new TextStyle(
                     fontSize: 32.0,
                     color: Colors.white
                   ),
                 ),
               ),
             ),
           ),
    );
      
  }
}

