import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// this is used for functions that have exactly only one expression
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?,',
      'What\'s your favorite band?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('question?'),
            ElevatedButton(
              child: Text('Answer1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
