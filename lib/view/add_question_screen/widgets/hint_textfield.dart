import 'package:flutter/material.dart';
import 'package:question_task/view/add_question_screen/components/custom_textfield.dart';

class HintTextField extends StatelessWidget {
  final TextEditingController tfController;
  final String tfLabel;
  final ValueChanged<String> onTextChanged;
  const HintTextField(
      {super.key,
      required this.tfController,
      required this.onTextChanged,
      required this.tfLabel});

  @override
  Widget build(BuildContext context) {
    return CustomTextfield(
        tfLabel: tfLabel,
        icon: Icon(
          Icons.lightbulb,
          size: 35,
          color: Colors.yellow[600],
        ),
        tfController: tfController,
        onTextChanged: onTextChanged);
  }
}
