import 'package:flutter/material.dart';

class QuestionTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onTextChanged;
  const QuestionTextField(
      {super.key, required this.controller, required this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.11,
      width: screenWidth * 0.85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: TextField(
          controller: controller,
          onChanged: onTextChanged,
          maxLines: 3,
          style: const TextStyle(fontSize: 22),
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              label: Text(
                "Add Your Question...",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              border: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never),
        ),
      ),
    );
  }
}
