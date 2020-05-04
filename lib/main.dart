// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './textControl.dart';
import './CustomText.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _wordIndex = 0;

  final _words = const ['dog', 'call', 'one', 'found', 'shellback'];

  void _updateIndex() {
    setState(() {
      if (_wordIndex + 1 == _words.length) {
        _wordIndex = 0;
      } else {
        _wordIndex = _wordIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Assignment 1'),
            ),
            body: Column(
              children: <Widget>[
                TextControl(_updateIndex),
                CustomText(_words[_wordIndex])
              ],
            ))
    );
  }
}
