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
          height: 120.h,
          width: 120.w,
        ),
        SizedBox(height: 6.h),
        Text(
          'Image loading error ! ',
          style: TextStyle(color: Colors.red, fontSize: 18.sp),
        ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
