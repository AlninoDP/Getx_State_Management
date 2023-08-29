import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/models/question_model.dart';

class QuestionController extends GetxController {
//* get Screen Width & Hight
  final screenWidth = Get.width;
  final screenHeight = Get.height;

//* Variables
  TextEditingController questionTextFieldController = TextEditingController();
  RxString addQuestionText = 'Invalid Question'.obs;
  TextEditingController imgSrcTextFieldController = TextEditingController();
  RxString imgSrcText = ' '.obs;
  //di inisiasi null saaat pembuatan object, bisa diganti dengan QuestionCategory.general atau lainnya
  Rx<QuestionCategory?> selectedCategory = Rx<QuestionCategory?>(null);

//* BottomNavBar
  RxInt btmNavBarCurrentIndex = 0.obs;

//* Method / Function
  void addToQuestionList(String imagePath, QuestionCategory questionCategory,
      String questionText) {
    QuestionModel newQuestion = QuestionModel(
        imagePath: imagePath,
        questionCategory: questionCategory,
        questionText: questionText);
    listOfQuestion.add(newQuestion);
    update();
  }

  void onDropdownChanged(QuestionCategory? newValue) {
    selectedCategory.value = newValue;
    update();
  }

  void resetAll() {
    imgSrcTextFieldController.clear();
    questionTextFieldController.clear();
    imgSrcText.value = ' ';
    addQuestionText.value = 'Invalid Question';
    selectedCategory.value = null;
  }

  void addToFilteredList(QuestionModel questionModel) {
    filteredList.add(questionModel);
  }

  void clearFilteredList() {
    filteredList.clear();
  }

//* List
  late List<QuestionModel> filteredList = [];
  List<QuestionModel> listOfQuestion = [
    QuestionModel(
        imagePath:
            'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTk3MTU2Mzk5MTQxMTY4MjEx/why-do-cats-stare-at-humans.png',
        questionCategory: QuestionCategory.animal,
        questionText: "What Is The Name Of This Animal ?"),
    QuestionModel(
        imagePath:
            'https://play-lh.googleusercontent.com/qbeCduZblOk80GaY164lw47gIRjXq9QIzSmgFwqQj1PyhNhTWxYR0OqPzm8BumnmJQ=w240-h480-rw',
        questionCategory: QuestionCategory.tech,
        questionText: "What Is The Name Of This Programming Language ?"),
    QuestionModel(
        imagePath: 'https://5.imimg.com/data5/PO/XI/MY-37095433/rugby-ball.jpg',
        questionCategory: QuestionCategory.sport,
        questionText: 'What Sport Use This Ball ? '),
    QuestionModel(
        imagePath:
            'https://i.pinimg.com/474x/e4/ed/65/e4ed658095b9610ce5b992b6031e75ca.jpg',
        questionCategory: QuestionCategory.general,
        questionText: 'Which Country Have This Flag ?'),
    QuestionModel(
        imagePath:
            'https://static.vecteezy.com/system/resources/previews/004/493/181/original/hospital-building-for-healthcare-background-illustration-with-ambulance-car-doctor-patient-nurses-and-medical-clinic-exterior-free-vector.jpg',
        questionCategory: QuestionCategory.general,
        questionText: 'What is This Building Used For ?'),
    QuestionModel(
        imagePath:
            'https://thumbs.dreamstime.com/b/creative-cartoon-word-oink-speech-bubble-smooth-gradient-style-original-153120779.jpg',
        questionCategory: QuestionCategory.animal,
        questionText: 'What Animal Sounds Like This ?'),
    QuestionModel(
        imagePath:
            'https://miro.medium.com/v2/resize:fit:1000/0*YISbBYJg5hkJGcQd.png',
        questionCategory: QuestionCategory.tech,
        questionText: 'What Programming Languange Use This Mascot ?'),
    QuestionModel(
        imagePath:
            'https://asset.kompas.com/crops/AWXtnkYHOrbSxSggVuTs3EzQprM=/10x36:890x623/750x500/data/photo/2023/03/25/641e5ef63dea4.jpg',
        questionCategory: QuestionCategory.food,
        questionText: "What Is The Name Of This Food ?"),
    QuestionModel(
        imagePath:
            'https://previews.123rf.com/images/magraphics/magraphics1905/magraphics190500013/124959418-row-of-bowling-pins-on-white-background.jpg',
        questionCategory: QuestionCategory.sport,
        questionText: 'How Many Bowling Pin Are There ?')
  ].obs;
}
