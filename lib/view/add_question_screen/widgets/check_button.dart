import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';

class CheckButton extends StatelessWidget {
  final QuestionController controller;
  const CheckButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          controller.addToQuestionList();
          controller.resetAll();
          Get.snackbar('Succes!', 'Your Question Is Added to The List',
              duration: const Duration(milliseconds: 1500),
              animationDuration: const Duration(seconds: 1));
        },
        style: ElevatedButton.styleFrom(
            elevation: 10, backgroundColor: Colors.greenAccent[400]),
        child: const Icon(
          Icons.done,
          size: 30,
        ));
  }
}
