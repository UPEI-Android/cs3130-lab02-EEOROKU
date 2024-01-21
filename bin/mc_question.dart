
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
  String get_choice(int index){
    if (index >= _choices.length) throw RangeError.index(index, _choices);
    return _choices[index];
  }
  @override toString();

}
