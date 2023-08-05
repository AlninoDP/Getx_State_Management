import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/background.dart';
import 'package:question_task/controller/question_controller.dart';
import 'package:question_task/view/add_question_screen/add_question_screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question Screen"),
        centerTitle: true,
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                  child: Obx(
                () => ListView.builder(
                    itemCount: controller.listOfQuestion.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        elevation: 20,
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FadeInImage(
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Image.asset(
                                    'assets/images/warning.png',
                                    height: 150,
                                    width: 150,
                                  ); // Show default asset
                                },
                                placeholder: const AssetImage(
                                    'assets/images/warning.png'),
                                image: NetworkImage(
                                  controller.listOfQuestion[index].imagePath,
                                ),
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              // CircleAvatar(
                              //   onBackgroundImageError:
                              //       (exception, stackTrace) {
                              //     controller.imageErrorList[index].value = true;
                              //   },
                              //   radius: 60,
                              //   backgroundImage: controller
                              //           .imageErrorList[index].value
                              //       ? AssetImage('assets/images/warning.png')
                              //       : NetworkImage(
                              //           controller
                              //               .listOfQuestion[index].imagePath,
                              //         ),
                              // ),
                              Text(controller
                                  .listOfQuestion[index].questionText),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                  'Category: ${controller.listOfQuestion[index].questionCategory.toString().split('.').last}')
                            ],
                          ),
                        ),
                      );
                    })),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddQuestionScreen());
        },
        elevation: 5,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
