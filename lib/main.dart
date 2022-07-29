import 'package:flutter/material.dart';
import 'package:flutter_new/result.dart';

import './quiz.dart';
import './result.dart';
//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

//My app is core widget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'what\'s your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 7},
          {'text': 'Black', 'score': 3}
        ],
      },
      {
        'questionText': 'What\'s is your favourite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 2},
          {'text': 'Snake', 'score': 10},
          {'text': 'Elephant', 'score': 7},
          {'text': 'Lion', 'score': 5},
        ],
      },
      {
        'questionText': 'What\'s is your favourite food?',
        'answers': [
          {'text': 'bean', 'score': 10},
          {'text': 'rice', 'score': 2},
          {'text': 'tomato', 'score': 5},
          {'text': 'Black', 'score': 7}
        ],
      },
    ];

    void _answerQuestion() {
      setState(() {
        //rerender when:
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
      if (_questionIndex < _questions.length) {
        print('we have more question!');
      } else {
        print('no more questions!');
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
