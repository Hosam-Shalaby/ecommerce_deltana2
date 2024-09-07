import 'package:ecommerce_deltana2/presentation/Views/widgets/categories.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(height: 20.h),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text('Category', style: Theme.of(context).textTheme.headlineMedium)
        ]),
        SizedBox(height: 10.h),
        Expanded(
            child: GridView(
                // physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 15,
                  childAspectRatio: .80,
                  // childAspectRatio: .94,
                  crossAxisCount: 2,
                ),
                children: [
              CategoryItem(
                title: 'Fruits & Vegetables',
                image: 'assets/images/veg.png',
                borderColor: ColorsConstant.mintGreenColor,
                backGroundColor: const Color.fromARGB(255, 232, 249, 238),
              ),
              CategoryItem(
                title: 'Breakfast',
                image: 'assets/images/nut.png',
                borderColor: ColorsConstant.orangeColor,
                backGroundColor: const Color.fromARGB(255, 251, 240, 231),
              ),
              CategoryItem(
                title: 'Beverages',
                image: 'assets/images/nes.png',
                borderColor: ColorsConstant.orangeColor,
                backGroundColor: const Color.fromARGB(255, 251, 240, 231),
              ),
              CategoryItem(
                title: 'Meat & Fish',
                image: 'assets/images/fish.png',
                borderColor: ColorsConstant.bbColor,
                backGroundColor: const Color.fromARGB(255, 234, 219, 239),
              ),
              CategoryItem(
                title: 'Snacks',
                image: 'assets/images/sna.png',
                borderColor: ColorsConstant.orangeColor,
                backGroundColor: const Color.fromARGB(255, 251, 240, 231),
              ),
              CategoryItem(
                title: 'Dairy',
                image: 'assets/images/milk.png',
                borderColor: ColorsConstant.mintGreenColor,
                backGroundColor: const Color.fromARGB(255, 232, 249, 238),
              ),
            ])),
      ]),
    ));
  }
}
