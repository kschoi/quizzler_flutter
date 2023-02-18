import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questions = [
    Question('대한민국은 알제리에게 0대 9로 진 적이 있다.', false),
    Question('2026년 월드컵은 송범근 키퍼가 국가대표가 될 확률이 낮다.', false),
    Question('알제리는 월드컵에 첫 출전 했을 때 독일팀을 상대로 승리한 적이 있다.', true),
    Question('2026년 월드컵은 미국, 캐나다, 이탈리아에서 열린다.', false),
    Question('이번 문제의 정답은 true이다.', true),
    Question('멕시코는 아메리카 대륙에 있다.', true),
    Question('멕시코는 아메리카 대륙에 있다.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
