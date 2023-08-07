import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/question_screen/widgets/show_image_error.dart';

class SelectedQuestionCard extends StatelessWidget {
  final QuestionController controller;
  final int index;
  const SelectedQuestionCard(
      {super.key, required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInImage(
              imageErrorBuilder: (context, error, stackTrace) {
                return const ShowImageError();
              },
              placeholder: const AssetImage('assets/images/loading.gif'),
              image: NetworkImage(
                controller.filteredList[index].imagePath,
              ),
              width: 150.w,
              height: 125.h,
              fit: BoxFit.cover,
            ),
            Text(controller.filteredList[index].questionText),
            SizedBox(
              height: 5.h,
            ),
            Text(
                'Category: ${controller.filteredList[index].questionCategory.toString().split('.').last}')
          ],
        ),
      ),
    );
  }
}
