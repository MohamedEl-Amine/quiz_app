// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './questionsAnswers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var count = 0;
  var totalScore = 0;

  void resetquiz() {
    setState(() {
      count = 0;
      totalScore = 0;
    });
  }

  void Questio(int score) {
    totalScore += score;
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 252, 252, 252),

        //appBar: AppBar(title: Text("Answer Application")),
        body: (count < question.length)
            ? Quiz(
                Qus: Questio,
                counter: count,
                questions: question,
              )
            : resultpage(totalScore, resetquiz),
      ),
    );
  }
}
