import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/components/custom_textfield.dart';

class QuestionTextfield extends StatelessWidget {
  final QuestionController questionController = Get.find();
  QuestionTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextfield(
        tfLabel: 'Add Your Question...',
        icon: const Icon(
          Icons.question_mark,
          size: 35,
          color: Colors.blue,
        ),
        focusNode: questionController.questionTextFocus,
        tfController: questionController.questionTextFieldController,
        onSubmitted: (_) {
          questionController.changeFocus(questionController.questionTextFocus,
              questionController.hint1Focus, context);
        },
        onTextChanged: (value) {
          questionController.addQuestionText.value = value;
        });
  }
}
