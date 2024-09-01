import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, this.text1, this.text2, this.price, this.img});

  String? text1;
  String? text2;
  String? price;
  String? img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.black26)),
        width: 120.w,
        // height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(15),
              height: 70.h,
              width: 150.w,

              child: Image.asset('$img', fit: BoxFit.contain),
            ),
            Text(
              '$text1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11.sp,
                // fontFamily: 'IBM Plex Sans Arabic',
                color: Colors.black,
              ),
            ),
            Text(
              '$text2',
              style: TextStyle(
                fontSize: 12.sp,
                // fontFamily: 'IBM Plex Sans Arabic',
                color: const Color(0xFF9F9E9A),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$price',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: const Color(0xFF323135),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color(ColorsConstant.mainColor)),
                  child: const Icon(Icons.add, color: Colors.white, size: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
