import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => new _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String _username;
  String _password;
  TextEditingController _usernameController = new TextEditingController();

  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    super.initState();
    _usernameController.text = 'Hello Qiuz';
    _usernameController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: _usernameController.text.length
    );
    _usernameController.addListener(() {
      print(_usernameController.text);
    });
  }

  void _handleUsername(name) {
    print(_usernameController.text);
    setState(() {
      _username = name;
    });
  }

  void _handlePassword(pwd) {
    setState(() {
      _password = pwd;
    });
  }

  void _showInfo() {
    Fluttertoast.showToast(
        msg: 'username $_username password $_password',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
          children: <Widget>[
            Container(
              child: TextField(
                controller: _usernameController,
                autofocus: true,
                onChanged: _handleUsername,
                focusNode: focusNode1,
                decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '用户名或邮箱',
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none
                ),
              ),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))
              ),
            ),
            
            TextField(
              onChanged: _handlePassword,
              focusNode: focusNode2,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '您的登录密码',
                prefixIcon: Icon(Icons.lock)
              ),
              obscureText: true,
            ),
            RaisedButton(
              child: Text('Submit'),
              onPressed: _showInfo,
            ),
            RaisedButton(
              child: Text('移动焦点'),
              onPressed: () {
                if (null == focusScopeNode) {
                  focusScopeNode = FocusScope.of(context);
                }
                focusScopeNode.requestFocus(focusNode2);
              },
            ),
            RaisedButton(
              child: Text('隐藏键盘'),
              onPressed: () {
                focusNode1.unfocus();
                focusNode2.unfocus();
              },
            ),
          ],
        ),
    );
  }
}


