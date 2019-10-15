import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _answerCounter = 0;
  int _finalScore = 0;
  var _questions = [
    {
      'question': 'Favorite E-Sports Organization',
      'answers': [{'text' : 'SK Telecom T1', 'score': 100}, {'text': 'Fnatic'}, {'text': 'G2'}, {'text': 'Team Liquid'}],
    },
    {
      'question': 'Favorite LoL Player',
      'answers': [{'text': 'Rekkles'}, {'text':'Faker', 'score': 100}, {'text': 'Caps'}, {'text': 'BRTT'}],
    },
    {
      'question': 'Who\'s the 2019 MSI Champions ',
      'answers': [{'text': 'Team Liquid'}, {'text': 'G2', 'score': 100}, {'text': 'SK Telecom T1'}, {'text':'Invictus Gaming'}],
    }
  ];

  void _nextQuestion(int score) {
    if(score != null){
      _finalScore += score;
    }
    print(_finalScore.toString());
    setState(() {
      _answerCounter++;
    });
    print(_answerCounter);
  }

  void _restartQuiz() {
    setState(() {
      _answerCounter = 0;
      _finalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Flutter App'),
        ),
        body: _answerCounter < _questions.length
            ? Quiz(answerIndex: _answerCounter, nextQuestion: _nextQuestion, questions: _questions,)
            : Result(restartQuiz: _restartQuiz, totalScore: _finalScore,)
      ),
    );
  }
}
