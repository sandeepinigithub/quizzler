import 'package:quizzler/question.dart';

class QuizBrain {
  int _i=0;
  List<Question> _question = [
    Question(
        q: 'All sides of a scalene triangle have the same length.', a: false),
    Question(
      q: '9 x 8 = 72.',
      a: true,
    ),
    Question(q: 'The square root of 100 is five.', a: false),
    Question(q: 'Water is also called H2O.', a: true),
    Question(q: 'Twenty minus 30 plus 10 equals zero.', a: true),
  ];
  
  String getQuestionText(){
    return _question[_i].questionText ;
  }

  bool getQuestionAnswer(){
    return _question[_i].questionAnswer ;
  }
  void nextQuestion() {
    if (_i < _question.length - 1) {
      _i++;
    }
  }
    bool isFinished() {
    if (_i >= _question.length - 1) {
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _i = 0;
  }
}
