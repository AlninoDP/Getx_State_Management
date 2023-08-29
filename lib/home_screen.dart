import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/add_question_screen.dart';
import 'package:question_task/view/question_screen/question_screen.dart';

class HomeScreen extends StatelessWidget {
  final QuestionController questionController = Get.find();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> _items = const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_add_outlined), label: 'Add Question')
    ];
    return Obx(() => Scaffold(
          body: IndexedStack(
              index: questionController.btmNavBarCurrentIndex.value,
              children: <Widget>[
                QuestionScreen(),
                AddQuestionScreen(),
              ]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: questionController.btmNavBarCurrentIndex.value,
            onTap: (index) {
              questionController.btmNavBarCurrentIndex.value = index;
            },
            items: _items,
          ),
        ));
  }
}
