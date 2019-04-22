import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListViewRoute extends StatefulWidget {
  @override
  _InfiniteListViewRouteState createState() => new _InfiniteListViewRouteState();
}

class _InfiniteListViewRouteState extends State<InfiniteListViewRoute> {
  static const loadingTag = "Loading...";
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((res) {
      _words.insertAll(_words.length - 1, 
        generateWordPairs().take(20).map((f) => f.asPascalCase).toList()
      );
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('InfiniteListView'),
      ),
      body: new ListView.separated(
        itemCount: _words.length,
        itemBuilder: (context, index) {
          if (_words[index] == loadingTag) {
            if (_words.length - 1 < 100) {
              _retrieveData();
              return Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(strokeWidth: 2.0,),
                ),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Text('没有更多', style: TextStyle(color: Colors.grey)),
              );
            }
          }
          return ListTile(title: Text(_words[index]),);
        },
        separatorBuilder: (context, index) => Divider(height: .0,),
      )
    ); 
   
  }
}