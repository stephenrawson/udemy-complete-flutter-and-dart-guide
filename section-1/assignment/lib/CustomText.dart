import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String word;

  CustomText(this.word);

  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      textAlign: TextAlign.center,
    );
  }
}
