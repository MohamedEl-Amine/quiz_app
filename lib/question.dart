import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 25,
          color: Colors.green[400],
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
