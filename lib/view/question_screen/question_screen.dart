import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/question_screen/widgets/question_card.dart';

class QuestionScreen extends StatelessWidget {
  final QuestionController questionController = Get.find();
  QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question Screen"),
        centerTitle: true,
      ),
      body: Background(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Column(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: questionController.listOfQuestion.length,
                          itemBuilder: ((context, index) {
                            return QuestionCard(
                                controller: questionController, index: index);
                          })),
                    )),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Expanded(
                        child: Obx(
                      () => ListView.builder(
                          itemCount: questionController.listOfQuestion.length,
                          itemBuilder: ((context, index) {
                            return QuestionCard(
                                controller: questionController, index: index);
                          })),
                    )),
                  ],
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => questionController.goToRandomQuestion(),
          child: const Icon(Icons.wifi_protected_setup)),
    );
  }
}
