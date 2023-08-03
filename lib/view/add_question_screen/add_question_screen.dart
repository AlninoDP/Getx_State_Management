import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/widgets/dropdown_category.dart';
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
      body: Center(
        child: Card(
          elevation: 15,
          color: Colors.black54,
          child: SizedBox(
            width: controller.screenWidth * 0.9,
            height: controller.screenHeight * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: QuestionTextField(
                      controller: controller.questionTextFieldController,
                      onTextChanged: (value) {
                        controller.addQuestionText.value = value;
                      }),
                ),
                Obx(
                  () => DropDownCategory(
                      selectedCategory: controller.selectedCategory.value,
                      onDropdownChanged: (newValue) {
                        controller.onDropdownChanged(newValue);
                      }),
                ),
                Obx(() => Text(controller.addQuestionText.value))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
