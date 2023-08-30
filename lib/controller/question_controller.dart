import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/models/question_model.dart';

class QuestionController extends GetxController {
//* get Screen Width & Hight
  final screenWidth = Get.width;
  final screenHeight = Get.height;

//* AddQuestionScreen
  TextEditingController questionTextFieldController = TextEditingController();
  RxString addQuestionText = 'Invalid Question'.obs;

  TextEditingController imgSrcTextFieldController = TextEditingController();
  RxString imgSrcText = ' '.obs;

  TextEditingController hint1TextFieldController = TextEditingController();
  RxString hint1Text = 'Hint Unavailable'.obs;

  TextEditingController hint2TextFieldController = TextEditingController();
  RxString hint2Text = 'Hint Unavailable'.obs;

  TextEditingController hint3TextFieldController = TextEditingController();
  RxString hint3Text = 'Hint Unavailable'.obs;

  //di inisiasi null saaat pembuatan object, bisa diganti dengan QuestionCategory.general atau lainnya
  Rx<QuestionCategory?> selectedCategory = Rx<QuestionCategory?>(null);

  void addToQuestionList() {
    QuestionModel newQuestion = QuestionModel(
        imagePath: imgSrcText.value,
        questionCategory: selectedCategory.value ?? QuestionCategory.general,
        questionText: addQuestionText.value,
        hintList: [hint1Text.value, hint2Text.value, hint3Text.value]);
    listOfQuestion.add(newQuestion);
    update();
  }

  void onDropdownChanged(QuestionCategory? newValue) {
    selectedCategory.value = newValue;
    update();
  }

  void addToFilteredList(QuestionModel questionModel) {
    filteredList.add(questionModel);
  }

  void clearFilteredList() {
    filteredList.clear();
  }

  void resetAll() {
    imgSrcTextFieldController.clear();
    questionTextFieldController.clear();
    hint1TextFieldController.clear();
    hint2TextFieldController.clear();
    hint3TextFieldController.clear();
    imgSrcText.value = ' ';
    addQuestionText.value = 'Invalid Question';
    hint1Text.value = 'Hint Unavailable';
    hint2Text.value = 'Hint Unavailable';
    hint3Text.value = 'Hint Unavailable';
    selectedCategory.value = null;
  }

//* BottomNavBar
  RxInt btmNavBarCurrentIndex = 0.obs;

//* Question Detail
  RxInt totalHint = 3.obs;
  void resetHint() {
    totalHint.value = 3;
  }

  void revealHint() {
    totalHint -= 1;
  }

//* List
  late List<QuestionModel> filteredList = [];
  List<QuestionModel> listOfQuestion = [
    QuestionModel(
        imagePath:
            'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cq_auto:eco%2Cw_1200/MTk3MTU2Mzk5MTQxMTY4MjEx/why-do-cats-stare-at-humans.png',
        questionCategory: QuestionCategory.animal,
        questionText: "What Is The Name Of This Animal ?",
        hintList: [
          'It Has Fluffy Fur',
          'Usually Keep As a Pet',
          'The Answer is Cat'
        ]),
    QuestionModel(
        imagePath:
            'https://play-lh.googleusercontent.com/qbeCduZblOk80GaY164lw47gIRjXq9QIzSmgFwqQj1PyhNhTWxYR0OqPzm8BumnmJQ=w240-h480-rw',
        questionCategory: QuestionCategory.tech,
        questionText: "What Is The Name Of This Programming Language ?",
        hintList: [
          'Developed by Google',
          'Can be Used to Develop Mobile or Website App',
          'The Answer is Dart Proggraming Language'
        ]),
    QuestionModel(
        imagePath: 'https://5.imimg.com/data5/PO/XI/MY-37095433/rugby-ball.jpg',
        questionCategory: QuestionCategory.sport,
        questionText: 'What Sport Use This Ball ? ',
        hintList: [
          'This Sport Is Popular in America',
          'There Are 15 People in the Team',
          'The Answer is Rugby'
        ]),
    QuestionModel(
        imagePath:
            'https://i.pinimg.com/474x/e4/ed/65/e4ed658095b9610ce5b992b6031e75ca.jpg',
        questionCategory: QuestionCategory.general,
        questionText: 'Which Country Have This Flag ?',
        hintList: [
          'It is Located in Northeast Asia or East Asia',
          'The Country Have Been Labeled as The Cleanest Country',
          'The Answer is Japan'
        ]),
    QuestionModel(
        imagePath:
            'https://static.vecteezy.com/system/resources/previews/004/493/181/original/hospital-building-for-healthcare-background-illustration-with-ambulance-car-doctor-patient-nurses-and-medical-clinic-exterior-free-vector.jpg',
        questionCategory: QuestionCategory.general,
        questionText: 'What is This Building Used For ?',
        hintList: [
          'The Name Of The Building is Hospital',
          'Doctors and Nurses Work There',
          'The Answer is To Treat Patient'
        ]),
    QuestionModel(
        imagePath:
            'https://thumbs.dreamstime.com/b/creative-cartoon-word-oink-speech-bubble-smooth-gradient-style-original-153120779.jpg',
        questionCategory: QuestionCategory.animal,
        questionText: 'What Animal Sounds Like This ?',
        hintList: [
          'This Animal is a Livestock',
          'it is The Source of Bacon',
          'The Answer is Pig'
        ]),
    QuestionModel(
        imagePath:
            'https://miro.medium.com/v2/resize:fit:1000/0*YISbBYJg5hkJGcQd.png',
        questionCategory: QuestionCategory.tech,
        questionText: 'What Programming Languange Use This Mascot ?',
        hintList: [
          'Created in 2007 by Google',
          'it is 10th popular language as march 2023',
          'The Answer is Golang'
        ]),
    QuestionModel(
        imagePath:
            'https://asset.kompas.com/crops/AWXtnkYHOrbSxSggVuTs3EzQprM=/10x36:890x623/750x500/data/photo/2023/03/25/641e5ef63dea4.jpg',
        questionCategory: QuestionCategory.food,
        questionText: "What Is The Name Of This Food ?",
        hintList: [
          'It is The National Food of Indonesia',
          'The Taste is Rich in spices',
          'The Answer is Rendang'
        ]),
    QuestionModel(
        imagePath:
            'https://previews.123rf.com/images/magraphics/magraphics1905/magraphics190500013/124959418-row-of-bowling-pins-on-white-background.jpg',
        questionCategory: QuestionCategory.sport,
        questionText: 'What Sport is This ?',
        hintList: [
          'There are 10 Pins on each set',
          'the Purpose is to Drop All the Pins',
          'The Answer is Bowling'
        ])
  ].obs;
}
