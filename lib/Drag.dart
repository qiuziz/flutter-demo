import 'package:flutter/material.dart';

class DragRoute extends StatefulWidget {
  @override
  _DragRouteState createState() => new _DragRouteState();
}

class _DragRouteState extends State<DragRoute> {
  double _top = 50.0;
  double _top1 = 100.0;
  double _left = 150.0;
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('ScrollController'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text('Q'),),
              onPanDown: (DragDownDetails e) {
                print('用户手指按下：${e.globalPosition}');
              },
              onPanUpdate: (DragUpdateDetails e) {
                setState(() {
                  _left += e.delta.dx;
                  _top += e.delta.dy;
                });
              },
              onPanEnd: (DragEndDetails e) {
                // setState(() {
                //   _left = 0;
                // });
                print(e.velocity);
              },
            ),
          ),
          Positioned(
            top: _top1,
            child: GestureDetector(
              child: CircleAvatar(child: Text('Z'),),
              onPanDown: (DragDownDetails e) {
                print('用户手指按下：${e.globalPosition}');
              },
              onVerticalDragUpdate: (DragUpdateDetails e) {
                setState(() {
                  _top1 += e.delta.dy;
                });
              },
            ),
          ),
          Center(
            child: GestureDetector(
              child: Image.asset("./images/taylor.jpg", width: _width),
              onScaleUpdate: (ScaleUpdateDetails e) {
                setState(() {
                  _width = 200*e.scale.clamp(.8, 10.0);
                });
              },
            ),
          ),
        ],
      )
    ); 
   
  }
}