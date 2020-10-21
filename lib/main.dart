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
  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];

  List<bool> answers = [false, true, true];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    questions[questionNumber],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'TRUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (true == answers[questionNumber]) {
                        scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }

                      if (questionNumber < questions.length) {
                        questionNumber++;
                      } else {
                        questionNumber = 0;
                      }
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    'FALSE',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (false == answers[questionNumber]) {
                        scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }

                      if (questionNumber < questions.length) {
                        questionNumber++;
                      } else {
                        questionNumber = 0;
                      }
                    });
                  },
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
