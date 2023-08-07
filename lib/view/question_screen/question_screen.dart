import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/add_question_screen.dart';
import 'package:question_task/view/question_detail_screen/question_detail_screen.dart';
import 'package:question_task/view/question_screen/widgets/question_card.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question Screen"),
        centerTitle: true,
      ),
      body: Background(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              Expanded(
                  child: Obx(
                () => ListView.builder(
                    itemCount: controller.listOfQuestion.length,
                    itemBuilder: ((context, index) {
                      return QuestionCard(controller: controller, index: index);
                    })),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to(() => const AddQuestionScreen());
          Get.to(() => QuestionDetailScreen(list1: controller.listOfQuestion));
        },
        elevation: 5,
        child: Icon(
          Icons.add,
          size: 30.w,
        ),
      ),
    );
  }
}
