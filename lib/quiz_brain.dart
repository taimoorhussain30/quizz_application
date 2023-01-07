import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Questions> _questionBank = [
    Questions(q: 'You can lead cow downstairs but not upstairs.', a: false),
    Questions(
        q: 'Approximately one quarter of the human bones are in feets',
        a: true),
    Questions(q: 'A slug\'s blood is green,', a: true),
    Questions(q: 'The atomic number for lithium is 17', a: false),
    Questions(
        q: 'A cross between a horse and a zebra is called a \'Hobra', a: false),
    Questions(q: 'The black box in a plane is black', a: false),
    Questions(q: 'Alliumphobia is a fear of garlic', a: true),
    Questions(
        q: 'Sex Education star Gillian Anderson was born in Chicago, Illinois',
        a: true),
    Questions(q: 'Prince Harry is taller than Prince William', a: false),
    Questions(q: 'The star sign Aquarius is represented by a tiger', a: false),
    Questions(q: 'Meryl Streep has won two Academy Awards', a: false),
    Questions(q: 'Marrakesh is the capital of Morocco', a: false),
    Questions(
        q: 'Idina Menzel sings \'let it go 20 times in \'Let It Go from Frozen',
        a: false),
    Questions(
        q: 'Waterloo has the greatest number of tube platforms in London',
        a: true),
    Questions(q: 'M&M stands for Mars and Moordale', a: false),
    Questions(
        q: 'Gin is typically included in a Long Island Iced Tea', a: true),
    Questions(q: 'The unicorn is the national animal of Scotland', a: true),
    Questions(
        q: 'There are two parts of the body that can\'t heal themselves',
        a: false),
    Questions(q: 'Howard Donald is the oldest member of Take That', a: true),
    Questions(
        q: 'The Great Wall of China is longer than the distance between London and Beijing',
        a: true),
    Questions(q: 'There are 219 episodes of Friends', a: false),
    Questions(
        q: 'A\' is the most common letter used in the English language',
        a: false),
    Questions(
        q: 'A lion\'s roar can be heard up to eight kilometres away', a: true),
    Questions(q: 'In Harry Potter, Draco Malfoy has no siblings', a: false),
    Questions(q: 'Louis Walsh is older than Simon Cowell', a: true),
    Questions(q: 'Monaco is the smallest country in the world', a: false),
    Questions(
        q: '\'What Do You Mean was Justin Bieber\'s first UK number one single',
        a: true),
    Questions(
        q: 'The river Seine in Paris is longer than the river Thames in London',
        a: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
