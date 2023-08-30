import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';

class CancelButton extends StatelessWidget {
  final QuestionController controller;
  const CancelButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          controller.resetAll();
        },
        style: ElevatedButton.styleFrom(
            elevation: 10, backgroundColor: Colors.redAccent[400]),
        child: const Icon(
          Icons.cancel,
          size: 30,
        ));
  }
}
