import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:question_task/view/question_screen/question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(360, 640),
        builder: (context, child) {
          return const GetMaterialApp(
            title: 'QuestionTask',
            debugShowCheckedModeBanner: false,
            home: QuestionScreen(),
          );
        });
  }
}
