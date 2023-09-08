import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowImageError extends StatelessWidget {
  const ShowImageError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/warning.png',
          height: 120,
          width: 120,
        ),
        SizedBox(height: 6.h),
        const Text(
          'Image loading error ! ',
          style: TextStyle(color: Colors.red, fontSize: 18),
        ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
