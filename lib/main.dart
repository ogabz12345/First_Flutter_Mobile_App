import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

//or void main() => runApp(MyApp());

//A Widget is a special type of object(Class)

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//(_) _className turns this class from public to private

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  //This is added to let you know that i'm using this build and not the statelessswidget build
  @override
  Widget build(BuildContext context) {
    //Short cut of a map List<Map<String,Object>>
    const questions = [
      {
        'questionText': 'what\'s your favorite color?',
        'answers': [
          'Blue',
          'Red',
          'Black',
          'White',
        ]
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answers': [
          'Rat',
          'Dog',
          'Bird',
          'Lion',
        ]
      },
      {
        'questionText': 'what\'s your favorite Soccer Team?',
        'answers': [
          'Barcelona',
          'Arsenal',
          'Real Madrid',
          'Manchester City',
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            //Call back Function (just like that of queue thing in document instrument)
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),

            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
