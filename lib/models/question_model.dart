class QuestionModel {
  final String imagePath;
  final String questionText;
  final QuestionCategory questionCategory;
  QuestionModel({
    required this.imagePath,
    required this.questionCategory,
    required this.questionText,
  });
}

enum QuestionCategory { general, sport, food, animal, tech }
