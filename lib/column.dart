import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  @override
  _ColumnWidgetState createState() => new _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(' Hello Qiuz '),
                    Text(' I am Qiuz ')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(' Hello Qiuz '),
                    Text(' I am Qiuz ')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Text(' Hello Qiuz '),
                    Text(' I am Qiuz ')
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Text(' Hello Qiuz ', style: TextStyle(fontSize: 30.0),),
                    Text(' I am Qiuz ')
                  ],
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Text(' Hello Qiuz '),
                        Text(' I am Qiuz ')
                      ],
                    ),
                  ),
                )
              ],
            ),
        ),
      )
      
    );
  }
}