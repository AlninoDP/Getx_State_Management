import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/question_detail_screen/widgets/question_detail_card.dart';

class QuestionDetailScreen extends StatelessWidget {
  final QuestionController questionController = Get.find();
  QuestionDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              itemCount: questionController.filteredList.length,
              itemBuilder: (context, index) {
                return QuestionDetailCard(
                    controller: questionController, index: index);
              },
            ))
          ],
        ),
      )),
    );
  }
}
