import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ParentStateC extends StatefulWidget {
  @override
  _ParentStateCState createState() => new _ParentStateCState();
}

class _ParentStateCState extends State<ParentStateC> {

  bool _active = false;

  void _handleChanged(bool value) {
    setState(() {
      _active = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new TapBoxC(
      active: _active,
      onChanged: _handleChanged,
    );
  }
}


class TapBoxC extends StatefulWidget {
  TapBoxC({Key key, this.active: false, @required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  _TapBoxCState createState() => new _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {

  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    setState(() {
      widget.onChanged(!widget.active);
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('TapBoxC'),
      ),
      body: new GestureDetector(
             onTap: _handleTap,
             onTapCancel: _handleTapCancel,
             onTapDown: _handleTapDown,
             onTapUp: _handleTapUp,
             child: new Container(
               width: 200.0,
               height: 200.0,
               decoration: new BoxDecoration(
                 color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
                 border: _highlight
                  ? new Border.all(
                    color: Colors.red,
                    width: 10.0,
                  )
                  : null
               ),
               child: new Center(
                 child: Text(
                   widget.active ? 'Active' : 'Inactice',
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

