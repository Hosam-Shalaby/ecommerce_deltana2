import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VariousProducts extends StatelessWidget {
  final String title;
  final String image;
  Color? backGroundColor;
  Color borderColor;

  // double fontSize = 12.sp;

  VariousProducts(
      {super.key,
      required this.title,
      required this.image,
      this.backGroundColor,
      required this.borderColor,
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        // height: 90,
        // width: 90,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: backGroundColor,
            border: Border.all(color: borderColor, width: .5)),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 60.h,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
