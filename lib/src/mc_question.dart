import 'dart:math';
///represent a multiple-choice question
class MCQuestion {

  //instance fields
  final String category;
  final String questionText;
  final int correctIndex;

  final List<String> _choices;

  //using initializing formals
  MCQuestion(this.category, this.questionText, this._choices, this.correctIndex) {
    if (correctIndex < 0 || correctIndex >= _choices.length) {
      throw RangeError.index(correctIndex, _choices);
    }
  }
  int get_choice_count(){
    return _choices.length;
  }
  String getChoice(int index){
    if (index >= _choices.length) throw RangeError.index(index, _choices);
    return _choices[index];
  }
  @override toString();

//mc_question.dart

  ///shuffle the choices
  void shuffle() {
    //fn body here
    List items = _choices;
    var random = Random();
    for (var i = items.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);

      var temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }
    for (var i = 0; i<items.length;i++){

    }
  }
}
