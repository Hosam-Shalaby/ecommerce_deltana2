import 'package:ecommerce_deltana2/ui/widgets/categories.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(193, 255, 255, 255),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20.h),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Category',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold))
                ]),
                Expanded(
                    child: GridView(
                        // physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 15,
                          childAspectRatio: .94,
                          crossAxisCount: 2,
                        ),
                        children: [
                      CategoryItem(
                        title: 'Fruits & Vegetables',
                        image: 'assets/images/veg.png',
                        fontSize: 12.sp,
                        borderColor: const Color(ColorsConstant.mintGreenColor),
                        backGroundColor:
                            const Color.fromARGB(255, 232, 249, 238),
                      ),
                      CategoryItem(
                        title: 'Breakfast',
                        image: 'assets/images/nut.png',
                        fontSize: 12.sp,
                        borderColor: const Color(ColorsConstant.orangeColor),
                        backGroundColor:
                            const Color.fromARGB(255, 251, 240, 231),
                      ),
                      CategoryItem(
                        title: 'Beverages',
                        image: 'assets/images/nes.png',
                        fontSize: 12.sp,
                        borderColor: const Color(ColorsConstant.orangeColor),
                        backGroundColor:
                            const Color.fromARGB(255, 251, 240, 231),
                      ),
                      CategoryItem(
                        title: 'Meat & Fish',
                        image: 'assets/images/fish.png',
                        fontSize: 12.sp,
                        borderColor: const Color(ColorsConstant.bbColor),
                        backGroundColor:
                            const Color.fromARGB(255, 234, 219, 239),
                      ),
                      CategoryItem(
                        title: 'Snacks',
                        image: 'assets/images/sna.png',
                        fontSize: 12.sp,
                        borderColor: const Color(ColorsConstant.orangeColor),
                        backGroundColor:
                            const Color.fromARGB(255, 251, 240, 231),
                      ),
                      CategoryItem(
                        title: 'Dairy',
                        image: 'assets/images/milk.png',
                        fontSize: 12.sp,
                        borderColor: const Color(ColorsConstant.mintGreenColor),
                        backGroundColor:
                            const Color.fromARGB(255, 232, 249, 238),
                      ),
                    ])),
              ]),
        ));
  }
}
