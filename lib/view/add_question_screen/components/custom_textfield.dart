import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';

class CustomTextfield extends StatelessWidget {
  final QuestionController questionController = Get.find();
  final TextEditingController tfController;
  final ValueChanged<String> onTextChanged;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final String tfLabel;
  final Icon? icon;
  CustomTextfield(
      {super.key,
      required this.tfController,
      required this.onTextChanged,
      required this.tfLabel,
      this.focusNode,
      this.onSubmitted,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: questionController.screenHeight * 0.09,
      width: questionController.screenWidth * 0.87,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: TextField(
          controller: tfController,
          focusNode: focusNode,
          onChanged: onTextChanged,
          onSubmitted: onSubmitted,
          maxLines: 2,
          textInputAction: TextInputAction.next,
          style: const TextStyle(fontSize: 22),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(0, -6, 10, 5),
              prefixIcon: icon,
              label: Text(
                tfLabel,
                style:
                    const TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
              ),
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never),
        ),
      ),
    );
  }
}
