import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/question_detail_screen/widgets/hint_text.dart';
import 'package:question_task/view/question_screen/widgets/show_image_error.dart';

class QuestionDetailCard extends StatelessWidget {
  final QuestionController controller;
  final int index;
  const QuestionDetailCard(
      {super.key, required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: FadeInImage(
                      imageErrorBuilder: (context, error, stackTrace) {
                        return const ShowImageError();
                      },
                      placeholder:
                          const AssetImage('assets/images/loading.gif'),
                      image: NetworkImage(
                        controller.filteredList[index].imagePath,
                      ),
                      width: 150,
                      height: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () => controller.revealHint(),
                      child: const Icon(Icons.star)),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(controller.filteredList[index].questionText),
            SizedBox(
              height: 5.h,
            ),
            Text(
                'Category: ${controller.filteredList[index].questionCategory.toString().split('.').last}'),
            SizedBox(
              height: 5.h,
            ),
            HintText(
              controller: controller,
              index: index,
            ),
          ],
        ),
      ),
    );
  }
}
