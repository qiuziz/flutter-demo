import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CountWidget extends StatefulWidget {
  const CountWidget({Key key, this.initValue: 0}): super(key: key);

  final int initValue;

  @override
  _CountWidgetState createState() => new _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {

  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print(_counter);
  }

  @override
  void didUpdateWidget(CountWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deativate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  Widget build(BuildContext content) {
     print("build");
    return new Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('$_counter'),
          onPressed: () => setState(() {_counter++;}),
        ),
      ),
    );
  }
}
