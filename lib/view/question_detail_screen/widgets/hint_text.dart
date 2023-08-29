import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';

class HintText extends StatelessWidget {
  final QuestionController controller;
  const HintText({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Visibility(
              visible: controller.totalHint.value <= 2 ? true : false,
              child: Text('a1')),
        ),
        Obx(
          () => Visibility(
              visible: controller.totalHint.value <= 1 ? true : false,
              child: Text('a2')),
        ),
        Obx(
          () => Visibility(
              visible: controller.totalHint.value <= 0 ? true : false,
              child: Text('a3')),
        ),
      ],
    );
  }
}
