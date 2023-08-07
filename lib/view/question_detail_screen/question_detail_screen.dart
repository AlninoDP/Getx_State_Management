import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/models/question_model.dart';
import 'package:question_task/view/question_detail_screen/widgets/selected_question_card.dart';

class QuestionDetailScreen extends StatelessWidget {
  final List<QuestionModel> questionList;
  const QuestionDetailScreen({super.key, required this.questionList});

  @override
  Widget build(BuildContext context) {
    final QuestionController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Detail'),
        centerTitle: true,
      ),
      body: Background(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: controller.filteredList.length,
              itemBuilder: (context, index) {
                return SelectedQuestionCard(
                    controller: controller, index: index);
              },
            ))
          ],
        ),
      )),
    );
  }
}
