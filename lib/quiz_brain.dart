import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Questions> _questionBank = [
    Questions('You can lead cow downstairs but not upstairs.', false),
    Questions(
        'Approximately one quarter of the human bones are in feets', true),
    Questions('A slug\'s blood is green,', true),
    Questions('The atomic number for lithium is 17', false),
    Questions('A cross between a horse and a zebra is called a \'Hobra', false),
    Questions('The black box in a plane is black', false),
    Questions('Alliumphobia is a fear of garlic', true),
    Questions(
        'Sex Education star Gillian Anderson was born in Chicago, Illinois',
        true),
    Questions('Prince Harry is taller than Prince William', false),
    Questions('The star sign Aquarius is represented by a tiger', false),
    Questions('Meryl Streep has won two Academy Awards', false),
    Questions('Marrakesh is the capital of Morocco', false),
    Questions(
        'Idina Menzel sings \'let it go 20 times in \'Let It Go from Frozen',
        false),
    Questions(
        'Waterloo has the greatest number of tube platforms in London', true),
    Questions('M&M stands for Mars and Moordale', false),
    Questions('Gin is typically included in a Long Island Iced Tea', true),
    Questions('The unicorn is the national animal of Scotland', true),
    Questions(
        'There are two parts of the body that can\'t heal themselves', false),
    Questions('Howard Donald is the oldest member of Take That', true),
    Questions(
        'The Great Wall of China is longer than the distance between London and Beijing',
        true),
    Questions('There are 219 episodes of Friends', false),
    Questions(
        'A\' is the most common letter used in the English language', false),
    Questions('A lion\'s roar can be heard up to eight kilometres away', true),
    Questions('In Harry Potter, Draco Malfoy has no siblings', false),
    Questions('Louis Walsh is older than Simon Cowell', true),
    Questions('Monaco is the smallest country in the world', false),
    Questions(
        '\'What Do You Mean was Justin Bieber\'s first UK number one single',
        true),
    Questions(
        'The river Seine in Paris is longer than the river Thames in London',
        true),
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
