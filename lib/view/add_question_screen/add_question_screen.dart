import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/widgets/cancel_button.dart';
import 'package:question_task/view/add_question_screen/widgets/check_button.dart';
import 'package:question_task/view/add_question_screen/widgets/dropdown_category.dart';
import 'package:question_task/view/add_question_screen/widgets/image_src_textfield.dart';
import 'package:question_task/view/add_question_screen/widgets/question_textfield.dart';

class AddQuestionScreen extends StatelessWidget {
  const AddQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Question'),
      ),
      body: Background(
        child: Center(
          child: Container(
            width: controller.screenWidth * 0.95,
            height: controller.screenHeight * 0.7,
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ImgSrcTextField(
                      tfController: controller.imgSrcTextFieldController,
                      onTextChanged: (value) {
                        controller.imgSrcText.value = value;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: QuestionTextField(
                      tfController: controller.questionTextFieldController,
                      onTextChanged: (value) {
                        controller.addQuestionText.value = value;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => Container(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 5, left: 10),
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(8)),
                    child: DropDownCategory(
                        selectedCategory: controller.selectedCategory.value,
                        onDropdownChanged: (newValue) {
                          controller.onDropdownChanged(newValue);
                        }),
                  ),
                ),
                Row(mainAxisSize: MainAxisSize.min, children: [
                  CheckButton(controller: controller),
                  SizedBox(
                    width: 10.w,
                  ),
                  CancelButton(controller: controller)
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
