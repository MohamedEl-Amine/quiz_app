import 'package:flutter/material.dart';
import './personality.dart';

class resultpage extends StatelessWidget {
  final int points;
  final VoidCallback reset;
  resultpage(this.points, this.reset);

  String get totalPhrase {
    String resultText = "";
    if (points > 0 && points < 20) {
      resultText = 'The Shy Worrier :';
    } else if (points >= 21 && points < 30) {
      resultText = 'The Careful Plodder :';
    } else if (points >= 31 && points < 40) {
      resultText = 'The Loyal Friend :';
    } else if (points >= 41 && points < 50) {
      resultText = 'The Lively Center of Attention :';
    } else if (points >= 51 && points < 60) {
      resultText = 'The Natural Leader :';
    } else if (points >= 61) {
      resultText = 'The Vain, Self-Centered Leader :';
    }
    ;
    return resultText;
  }

  String get secondPhrase {
    String personalityText = "";
    print(points);
    if (points > 0 && points < 20) {
      personalityText = THE_Shy_Worrier;
    } else if (points >= 21 && points < 30) {
      personalityText = THE_Careful_Plodder;
    } else if (points >= 31 && points < 40) {
      personalityText = The_Loyal_Friend;
    } else if (points >= 41 && points < 50) {
      personalityText = The_Lively_Center_of_Attention;
    } else if (points >= 51 && points < 60) {
      personalityText = The_Natural_Leader;
    } else if (points >= 61) {
      personalityText = TheVain_Self_Centered_Leader;
    }
    ;
    return personalityText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sbg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              totalPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              secondPhrase,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: reset,
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[400],
                  alignment: Alignment.center,
                ),
                child: Text("Restart the Quiz")),
          ],
        ),
      ),
    );
  }
}
