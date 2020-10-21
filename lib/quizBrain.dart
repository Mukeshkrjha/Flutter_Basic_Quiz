import 'package:flutter_basic_quiz_app/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questions = [
    Questions(
        'Cyclones spin in a clockwise direction in the southern hemisphere?',
        true),
    Questions('Goldfish only have a memory of three seconds?', false),
    Questions('The capital of Libya is Benghazi?', false),
    Questions('Dolly Parton is the godmother of Miley Cyrus?', true),
    Questions('Roger Federer has won the most Wimbledon titles of any player?',
        false),
    Questions('An octopus has five hearts?', false),
    Questions(
        'Brazil is the only country in the Americas to have the official language of Portuguese?',
        true),
    Questions(
        'The Channel Tunnel is the longest rail tunnel in the world', false),
    Questions('The highest mountain in England is Ben Nevis?', false),
    Questions('Stephen Hawking declined a knighthood from the Queen?', true),
    Questions('The Great Wall of China is visible from space?', false),
    Questions('The Statue of Liberty was a gift from France?', true),
    Questions(
        'Approximately one quarter of human bones are in the feet.', true),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questions('Google was originally called \"Backrub\".', true),
    Questions(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questions(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questions[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questions[_questionNumber].answer;
  }

  int getQuestionCount() {
    return _questions.length;
  }

  bool isQuizEnded() {
    print(_questionNumber);
    if (_questionNumber == (_questions.length - 1))
      return true;
    else
      return false;
  }

  void restartQuiz() {
    _questionNumber = 0;
  }
}
