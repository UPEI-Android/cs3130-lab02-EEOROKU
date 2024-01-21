import 'package:multiple_choice_question/multiple_choice_question.dart';
import 'package:test/test.dart';

void main() {
  group("MCQuestion", () {
    //perform some common set-up
    List<String> choices = ["A", "B", "C"];

    String category = "A,B or C";
    String text = "Is is A,B or C?";

    int c = 2;

    late MCQuestion question;

    //the setUp method gets called before every test in this group
    setUp(() {
      question = MCQuestion(category, text, choices, c);
    });

    test('test correct index on declaration', () {
      expect(question.correctIndex, 2);
    });

    test('correct index too low on creation throws RangeError', () {
      expect( () => MCQuestion(category, text, choices, -1), throwsA(isRangeError));
    });

    test('test correct index works after random shuffle', () {
      String correctText = question.getChoice(correctIdx);

      //Everyday I'm shuffling (until the choice at idx 2 moves)
      while (question.getChoice(correctIdx) == correctText) {
        question.shuffle();
      }
      expect(question.correctIndex, isNot(2));
    });

  });//end of group MCQuestion

}
