import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SwitchAndCheckBoxTestRouter extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouterState createState() => new _SwitchAndCheckBoxTestRouterState();
}

class _SwitchAndCheckBoxTestRouterState extends State<SwitchAndCheckBoxTestRouter> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  void _handleSwitchChanged(bool value) {
    setState(() {
      _switchSelected = value;
    });
  }
  
  void _handleCheckboxChanged(bool value) {
    setState(() {
      _checkboxSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Switch & CheckBox'),
      ),
      body: new Column(
        children: <Widget>[
          Switch(
            value: _switchSelected,
            onChanged: _handleSwitchChanged,
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.blue,
            onChanged: _handleCheckboxChanged
          )
        ],
      ),
    );
  }
}

