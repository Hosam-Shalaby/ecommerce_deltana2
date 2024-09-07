import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';

class BottonWithIcon extends StatelessWidget {
  BottonWithIcon({
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
  String? icon;
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
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              ),
            ),
            Positioned(
              right: 10,
              top: 0,
              bottom: 0,
              child: SizedBox(
                height: 21.94,
                width: 19,
                child: Image.asset(
                  '$icon',
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
