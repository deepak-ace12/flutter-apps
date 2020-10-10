import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function restartHandler;

  Result(this.finalScore, this.restartHandler);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 8) {
      resultText = "You're awesome!";
    } else if (finalScore <= 16) {
      resultText = "You're pretty likable!";
    } else {
      resultText = "You're..... strange ?!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
