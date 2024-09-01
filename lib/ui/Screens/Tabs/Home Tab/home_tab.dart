import 'package:ecommerce_deltana2/ui/widgets/categories.dart';
import 'package:ecommerce_deltana2/ui/widgets/products.dart';
import 'package:ecommerce_deltana2/ui/widgets/search_bar.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(191, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Delivery within',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 208, 236, 211)),
                      child: Text('60 minute',
                          style: TextStyle(
                              color: const Color(ColorsConstant.greenColor),
                              fontSize: 9.sp,
                              fontWeight: FontWeight.bold))),
                  const Spacer(),
                  const Icon(Icons.notifications_active_outlined),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: const Color(ColorsConstant.mainColor)),
                    child: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Location',
                        style: TextStyle(fontSize: 11.sp),
                      ),
                      const Text(
                        '32 Llanberis Close, Tonteg, CF38 1HR',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward)
                ],
              ),
              SizedBox(height: 15.h),
              const SearchWidget(),
              SizedBox(height: 15.h),
              SizedBox(
                // height: 150,
                width: 400.w,
                child: Stack(
                  children: [
                    Image.asset('assets/images/banner.png'),
                    Positioned(
                        top: 35,
                        left: 130,
                        child:
                            Image.asset('assets/images/Fresh Vegetables.png')),
                    Positioned(
                        top: 60,
                        left: 130,
                        child:
                            Image.asset('assets/images/Get Up To 40% OFF.png'))
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const Row(children: [
                Text('Exclusive Offer'),
                Spacer(),
                Text('See all',
                    style: TextStyle(color: Color(ColorsConstant.mainColor)))
              ]),
              SizedBox(
                height: 175.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      text1: 'Bananas',
                      text2: '1kg, Priceg',
                      price: '\$4.99',
                      img: 'assets/images/banana.png',
                    ),
                    ProductCard(
                      text1: 'Red Apple',
                      text2: '1kg, Priceg',
                      price: '\$4.99',
                      img: 'assets/images/apple.png',
                    ),
                    ProductCard(
                      text1: 'Bananas',
                      text2: '1kg, Priceg',
                      price: '\$4.99',
                      img: 'assets/images/apple.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const Row(children: [
                Text('Best Selling'),
                Spacer(),
                Text('See all',
                    style: TextStyle(color: Color(ColorsConstant.mainColor)))
              ]),
              SizedBox(
                height: 175.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      text1: 'Bell Pepper',
                      text2: '1kg, Priceg',
                      price: '\$4.99',
                      img: 'assets/images/pepper.png',
                    ),
                    ProductCard(
                      text1: 'Ginger',
                      text2: '1kg, Priceg',
                      price: '\$4.99',
                      img: 'assets/images/ginger.png',
                    ),
                    ProductCard(
                      text1: 'Bananas',
                      text2: '1kg, Priceg',
                      price: '\$4.99',
                      img: 'assets/images/apple.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const Row(children: [
                Text('Various products'),
                Spacer(),
                Text('See all',
                    style: TextStyle(color: Color(ColorsConstant.mainColor)))
              ]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryItem(
                    image: 'assets/images/fruit.png',
                    title: 'Fruits',
                  ),
                  CategoryItem(
                    image: 'assets/images/meat.png',
                    title: 'Meat & Fish',
                  ),
                  CategoryItem(
                    image: 'assets/images/breakfast.png',
                    title: 'Breakfast',
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryItem(
                    image: 'assets/images/snacks.png',
                    title: 'Snacks',
                  ),
                  CategoryItem(
                    image: 'assets/images/bevargers.png',
                    title: 'Beverages',
                  ),
                  CategoryItem(
                    image: 'assets/images/daily.png',
                    title: 'Dairy',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
