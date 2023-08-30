class QuestionModel {
  final String imagePath;
  final String questionText;
  final QuestionCategory questionCategory;
  final List<String> hintList;
  QuestionModel(
      {required this.imagePath,
      required this.questionCategory,
      required this.questionText,
      required this.hintList});
}

enum QuestionCategory { general, sport, food, animal, tech }
