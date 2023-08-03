import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/controller/question_controller.dart';

class ImgSrcTextField extends StatelessWidget {
  final TextEditingController tfController;
  final ValueChanged<String> onTextChanged;
  const ImgSrcTextField(
      {super.key, required this.tfController, required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.find();
    return Container(
      height: controller.screenHeight * 0.11,
      width: controller.screenWidth * 0.85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: TextField(
          controller: tfController,
          onChanged: onTextChanged,
          maxLines: 3,
          style: const TextStyle(fontSize: 22),
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              label: Text(
                "Add Your Image Link Here...",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never),
        ),
      ),
    );
  }
}
