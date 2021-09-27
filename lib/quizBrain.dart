import 'package:flutter/animation.dart';

import 'question.dart';

class QuizBrain{

  int _questionNum = 0; //encapsulation
  List<Question> _questionBank= [
    Question(s:'Some cats are actually allergic to humans', a:true),
    Question(s:'You can lead a cow down stairs but not up stairs.', a: false),
    Question(s:'Approximately one quarter of human bones are in the feet.',a: true),
    Question(s:'A slug\'s blood is green.', a:true),
    Question(s:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a:true),
    Question(s:'It is illegal to pee in the Ocean in Portugal.', a:true),
    Question(s:'No piece of square dry paper can be folded in half more than 7 times.',a:false),

  ];
  void nextQuestion(){
    if (_questionNum < _questionBank.length-1){
      _questionNum++;
    }
  }
  String getQuestion(){
    return _questionBank[_questionNum].questionText;
  }
  bool getQuestionAns(){
    return _questionBank[_questionNum].questionAnswer;
  }
}