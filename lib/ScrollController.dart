import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ScrollControllerRoute extends StatefulWidget {
  @override
  _ScrollControllerRouteState createState() => new _ScrollControllerRouteState();
}

class _ScrollControllerRouteState extends State<ScrollControllerRoute> {
  static const loadingTag = "Loading...";
  var _words = <String>[loadingTag];
  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();
    _retrieveData();
    _controller.addListener(() {
      print(_controller.offset);
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && !showToTopBtn) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
        title: Text('ScrollController'),
      ),
      body: new ListView.separated(
        controller: _controller,
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
      ),
      floatingActionButton: showToTopBtn
        ? FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            _controller.animateTo(.0,
              duration: Duration(milliseconds: 200),
              curve: Curves.ease
            );
          },
        )
        : null,
    ); 
   
  }
}