import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/widgets/cancel_button.dart';
import 'package:question_task/view/add_question_screen/widgets/check_button.dart';
import 'package:question_task/view/add_question_screen/widgets/dropdown_category.dart';
import 'package:question_task/view/add_question_screen/widgets/hint_textfield.dart';
import 'package:question_task/view/add_question_screen/widgets/img_src_textfield.dart';
import 'package:question_task/view/add_question_screen/widgets/question_textfield.dart';

class AddQuestionScreen extends StatelessWidget {
  final QuestionController questionController = Get.find();
  AddQuestionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Question'),
      ),
      body: Background(
        child: Center(
          child: Container(
            width: questionController.screenWidth * 0.95,
            height: questionController.screenHeight * 0.7,
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      Center(child: ImgSrcTextfield()),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(child: QuestionTextfield()),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: HintTextField(
                          tfLabel: 'Add First Hint...',
                          tfController:
                              questionController.hint1TextFieldController,
                          onTextChanged: (value) {
                            questionController.hint1Text.value = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: HintTextField(
                              tfLabel: 'Add Second Hint...',
                              tfController:
                                  questionController.hint2TextFieldController,
                              onTextChanged: (value) {
                                questionController.hint2Text.value = value;
                              })),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: HintTextField(
                              tfLabel: 'Add The Answer...',
                              tfController:
                                  questionController.hint3TextFieldController,
                              onTextChanged: (value) {
                                questionController.hint3Text.value = value;
                              })),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => DropDownCategory(
                            selectedCategory:
                                questionController.selectedCategory.value,
                            onDropdownChanged: (newValue) {
                              questionController.onDropdownChanged(newValue);
                            }),
                      ),
                      Center(
                        child: Row(mainAxisSize: MainAxisSize.min, children: [
                          CheckButton(controller: questionController),
                          SizedBox(
                            width: 10.w,
                          ),
                          CancelButton(controller: questionController)
                        ]),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
