import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';

class HintText extends StatelessWidget {
  final QuestionController controller;
  final int index;
  const HintText({super.key, required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => AnimatedOpacity(
              opacity: controller.totalHint.value <= 2 ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Text(controller.filteredList[index].hintList[0]),
            )),
        SizedBox(
          height: 3.h,
        ),
        Obx(
          () => AnimatedOpacity(
              opacity: controller.totalHint.value <= 1 ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Text(
                controller.filteredList[index].hintList[1],
              )),
        ),
        SizedBox(
          height: 3.h,
        ),
        Obx(
          () => AnimatedOpacity(
              opacity: controller.totalHint.value <= 0 ? 1.0 : 0.0,
              duration: const Duration(seconds: 1),
              child: Text(controller.filteredList[index].hintList[2])),
        ),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }
}
