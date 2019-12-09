//material.dart has a lot of built-in widgets
import 'package:flutter/material.dart';

//First function that Dart and Flutter read
//runApp is a function provided by material.dart
void main() => runApp(MyApp());

//It's possible to use "=>" when a function has only one expression

class MyApp extends StatefulWidget {
  // createState ahould return a State, and our class MyAppState extends from State
  // So that means, that we can return it. And with that complete, the two pieces are connected.
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//State<MyApp> means that the class MyAppState belongs to My App
class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    //setState is a function that makes Flutter re-render the user interface
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
   
  }

  //BuildContext is a special object type provided by Flutter
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color ?",
      "What's your favorite animal ?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Aswer 1'),
              onPressed: answerQuestion, //use just the name without parentheses
            ),
            RaisedButton(
              child: Text('Aswer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Aswer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}