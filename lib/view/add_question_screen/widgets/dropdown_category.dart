import 'package:flutter/material.dart';
import 'package:question_task/models/question_model.dart';

class DropDownCategory extends StatelessWidget {
  final QuestionCategory? selectedCategory;
  final ValueChanged<QuestionCategory?> onDropdownChanged;
  const DropDownCategory(
      {super.key,
      required this.selectedCategory,
      required this.onDropdownChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 10),
        decoration: BoxDecoration(
            color: Colors.black45, borderRadius: BorderRadius.circular(8)),
        child: DropdownButton(
          underline: const SizedBox.shrink(),
          dropdownColor: Colors.black54,
          style: const TextStyle(
            fontSize: 23,
            color: Colors.white,
          ),
          icon: const Icon(
            Icons.arrow_drop_down_sharp,
            size: 30,
            color: Colors.white,
          ),
          hint: const Text(
            "Select Question Category",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          value: selectedCategory,
          items: QuestionCategory.values.map((QuestionCategory category) {
            return DropdownMenuItem<QuestionCategory>(
                value: category,
                child: Center(
                  child: Text(
                    category.toString().split('.').last,
                  ),
                ));
          }).toList(),
          onChanged: onDropdownChanged,
        ));
  }
}
