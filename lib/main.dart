import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:question_task/view/question_screen/question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'GetX State',
      debugShowCheckedModeBanner: false,
      home: QuestionScreen(),
    );
  }
}
