import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Demo'),
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Center(
                child: CupertinoButton(
                  color: CupertinoColors.activeBlue,
                  child: Text('Press'),
                  onPressed: () {},
                ),
              )
          ),
          Container(
            child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text('Submit'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {},
                  padding: EdgeInsets.all(18.0),
                ),
              )
          ),
          Container(
            child: Center(
                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text('Submit'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {},
                ),
              )
          ),
          Container(
            child: Center(
                child: Image(
                  key: Key('avatar'),
                  image: AssetImage("images/avatar.png"),
                  width: 100.0,
                ),
              )
          ),
          Container(
            child: Center(
                child: Image(
                  key: Key('avatar1'),
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                  width: 100.0,
                ),
              )
          ),
          Container(
            child: Center(
                child: Text(
                 "\uE914 \uE000 \uE90D",
                 style: TextStyle(
                   fontFamily: "MaterialIcons",
                   fontSize: 24.0,
                   color: Colors.green
                 ),
                ),
              )
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.accessible,color: Colors.green,),
                  Icon(Icons.error,color: Colors.green,),
                  Icon(Icons.fingerprint,color: Colors.green,),
                ],
              )
          ),
        ],
      ) 
      );
  }
}

