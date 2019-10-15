import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function restartQuiz;
  final int totalScore;

  Result({this.restartQuiz, this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Thank You! Total Score: '+totalScore.toString()),
          RaisedButton(
            child: Text('Retry'),
            onPressed: restartQuiz,
          )
        ],
      ),
    );
  }
}
