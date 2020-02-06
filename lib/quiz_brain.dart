import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Einige Katzen sind tatsächlich allergisch gegen Menschen.', true),
    Question(
        'Sie können eine Kuh die Treppe hinunter führen, aber nicht die Treppe hinauf.',
        false),
    Question(
        'Ungefähr ein Viertel der menschlichen Knochen befindet sich in den Füßen.',
        true),
    Question('Das Blut einer Schnecke ist grün.', true),
    Question('Der Mädchenname von Buzz Aldrins Mutter war "Mond".', true),
    Question('In Portugal ist es illegal, in den Ozean zu pinkeln.', true),
    Question(
        'Kein Stück viereckiges trockenes Papier kann mehr als sieben Mal gefaltet werden.',
        false),
    Question(
        'Wenn Sie in London, Großbritannien, zufällig im House of Parliament sterben, haben Sie einen technischen Anspruch auf eine staatliche Beerdigung, da das Gebäude als zu heilig eingestuft wird.',
        true),
    Question(
        'Das lauteste Geräusch eines Tieres ist 188 Dezibel. Dieses Tier ist der afrikanische Elefant.',
        false),
    Question(
        'Die Gesamtfläche von zwei menschlichen Lungen beträgt ungefähr 70 Quadratmeter.',
        true),
    Question('Google hieß ursprünglich "Backrub".', true),
    Question(
        'Schokolade beeinflusst das Herz und das Nervensystem eines Hundes. Ein paar Unzen sind genug, um einen kleinen Hund zu töten.',
        true),
    Question(
        'Wenn Sie in West Virginia, USA, versehentlich ein Tier mit Ihrem Auto erwischt haben, können Sie es zum Essen mit nach Hause nehmen.',
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
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
