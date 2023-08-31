import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/components/custom_textfield.dart';

class ImgSrcTextfield extends StatelessWidget {
  final QuestionController questionController = Get.find();
  ImgSrcTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextfield(
        tfLabel: 'Add Your Image Link Here...',
        icon: const Icon(
          Icons.image,
          size: 35,
          color: Colors.blue,
        ),
        tfController: questionController.imgSrcTextFieldController,
        onTextChanged: (value) {
          questionController.imgSrcText.value = value;
        });
  }
}
