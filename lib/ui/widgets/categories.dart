import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;
  Color? backGroundColor;
  Color borderColor;

  double fontSize;

  CategoryItem(
      {super.key,
      required this.title,
      required this.image,
      this.backGroundColor,
      required this.borderColor,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 150.w,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: backGroundColor,
          border: Border.all(color: borderColor, width: .5)),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 140.h,
            // fit: BoxFit.contain,
          ),
          SizedBox(height: 5.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'IBM Plex Sans Arabic',
              fontWeight: FontWeight.w400,
              fontSize: fontSize,
              color: const Color(0xFF323135),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
