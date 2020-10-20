import 'package:flutter/material.dart';

void main() {
  runApp(MyQuizApp());
}

class MyQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: QuizPage(
        title: 'Basic Quiz',
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  QuizPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(widget.title),
      ),
    );
  }
}
