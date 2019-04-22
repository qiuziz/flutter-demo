import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

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
    _readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
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

  Future<File> _getLocalFile() async {
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/counter.txt');
  }

  Future<Null> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await (await _getLocalFile()).writeAsString('$_counter');
  }

  Future<int> _readCounter() async {
    try {
      File file = await _getLocalFile();
      String contents = await file.readAsString();
      return int.parse(contents);
    } on FileSystemException {
      return 0;
    }
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
          onPressed: () => _incrementCounter(),
        ),
      ),
    );
  }
}
