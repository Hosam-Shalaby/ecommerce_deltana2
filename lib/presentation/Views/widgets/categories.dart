import 'package:ecommerce_deltana2/presentation/Views/Products%20Screen/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;
  Color? backGroundColor;
  Color borderColor;

  CategoryItem({
    super.key,
    required this.title,
    required this.image,
    this.backGroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductsScreen.routeName,
            arguments: title);
      },
      child: Container(
        height: 120.h,
        width: 150.w,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: backGroundColor,
            border: Border.all(color: borderColor, width: .5)),
        child: Column(
          children: [
            Image.asset(image, height: 140.h),
            SizedBox(height: 5.h),
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
