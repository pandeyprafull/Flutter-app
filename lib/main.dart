import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main(){
// runApp(MyApp());;
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favourite instructor ?',
      'answers': ['max', 'max', 'max', 'max'],
    }
  ];

  void _answerQuestions() {
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });

    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('No more questions...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result() ,
      ),
    );
  }
}
