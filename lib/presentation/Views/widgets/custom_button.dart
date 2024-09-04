import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    this.icon,
    this.fontSize,
    required this.height,
    required this.width,
    required this.radius,
    required this.onTap,
  });
  String text;
  IconData? icon;
  double height;
  double width;
  double radius;
  double? fontSize;
  String onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // onTap
        Navigator.pushNamed(context, onTap);
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ColorsConstant.mainColor,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
            // Icon(
            //   icon,
            //   color: Colors.white,
            // )
          ],
        ),
      ),
    );
  }
}
