import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function updateIndex;

  TextControl(this.updateIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        textColor: Colors.green,
        child: Text('Hello'),
        onPressed: updateIndex,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
    );
  }
}
