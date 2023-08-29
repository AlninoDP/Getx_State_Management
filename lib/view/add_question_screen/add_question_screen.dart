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
  final QuestionController questionController = Get.find();
  AddQuestionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Question'),
      ),
      body: Background(
        child: Center(
          child: Container(
            width: questionController.screenWidth * 0.95,
            height: questionController.screenHeight * 0.7,
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ImgSrcTextField(
                      tfController:
                          questionController.imgSrcTextFieldController,
                      onTextChanged: (value) {
                        questionController.imgSrcText.value = value;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: QuestionTextField(
                      tfController:
                          questionController.questionTextFieldController,
                      onTextChanged: (value) {
                        questionController.addQuestionText.value = value;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => DropDownCategory(
                      selectedCategory:
                          questionController.selectedCategory.value,
                      onDropdownChanged: (newValue) {
                        questionController.onDropdownChanged(newValue);
                      }),
                ),
                Row(mainAxisSize: MainAxisSize.min, children: [
                  CheckButton(controller: questionController),
                  SizedBox(
                    width: 10.w,
                  ),
                  CancelButton(controller: questionController)
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
