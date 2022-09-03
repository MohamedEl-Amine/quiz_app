// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'question.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function Qus;
  final int counter;
  Quiz({required this.questions, required this.Qus, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 100,
            child: Row(
              children: [
                Image(image: AssetImage("images/a.png")),
                Text(
                  'Quiz Application',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green[400]),
                ),
              ],
            ),
          ),
          Questions(
            questions[counter]['Qus'],
          ),
          SizedBox(
            height: 20,
          ),
          ...(questions[counter]['Anw'] as List<Map<String, Object>>)
              .map((answer) {
            return ansewersButton(() => Qus(answer['score']), answer['text']);
          }).toList(),
          Container(child: Text("by Mohamed Amine", textAlign: TextAlign.right))
        ],
      ),
    );
  }
}
