import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

// this is used for functions that have exactly only one expression
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 4},
        {'text': 'Blue', 'score': 2},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite band?',
      'answers': [
        {'text': 'ID', 'score': 1},
        {'text': 'OneRepublic', 'score': 3},
        {'text': 'Bad Suns', 'score': 7},
        {'text': 'Giant Rooks', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite football team?',
      'answers': [
        {'text': 'ManUnited', 'score': 1},
        {'text': 'ManCity', 'score': 3},
        {'text': 'Chelsea', 'score': 6},
        {'text': 'LiVARpool', 'score': 7},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final questions list was here...
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
