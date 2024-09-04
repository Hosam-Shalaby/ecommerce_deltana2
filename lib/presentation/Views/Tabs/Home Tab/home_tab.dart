import 'package:ecommerce_deltana2/presentation/Views/widgets/products.dart';
import 'package:ecommerce_deltana2/presentation/Views/widgets/search_bar.dart';
import 'package:ecommerce_deltana2/presentation/Views/widgets/various_products.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Delivery within',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 208, 236, 211)),
                      child: Text('60 minute',
                          style: TextStyle(
                              color: ColorsConstant.greenColor,
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
                        color: ColorsConstant.mainColor),
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
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '32 Llanberis Close, Tonteg, CF38 1HR',
                        style: Theme.of(context).textTheme.titleLarge,
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
              Row(children: [
                Text('Exclusive Offer',
                    style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(),
                const Text('See all',
                    style: TextStyle(
                        color: ColorsConstant.mainColor,
                        fontSize: 14,
                        fontFamily: 'Poppins'))
              ]),
              SizedBox(height: 10.h),
              SizedBox(
                height: 180.h,
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
              Row(children: [
                Text('Best Selling',
                    style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(),
                const Text('See all',
                    style: TextStyle(
                        color: ColorsConstant.mainColor,
                        fontSize: 14,
                        fontFamily: 'Poppins'))
              ]),
              SizedBox(height: 10.h),
              SizedBox(
                height: 180.h,
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
              Row(children: [
                Text(
                  'Various products',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                const Text('See all',
                    style: TextStyle(
                        color: ColorsConstant.mainColor,
                        fontSize: 14,
                        fontFamily: 'Poppins'))
              ]),
              SizedBox(
                height: 240.h,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 7),
                  children: [
                    VariousProducts(
                      image: 'assets/images/fruit.png',
                      title: 'Fruits',
                      borderColor: Colors.white,
                      backGroundColor: Colors.white,
                    ),
                    VariousProducts(
                      image: 'assets/images/meat.png',
                      title: 'Meat & Fish',
                      borderColor: Colors.white,
                      backGroundColor: Colors.white,
                    ),
                    VariousProducts(
                      image: 'assets/images/breakfast.png',
                      title: 'Breakfast',
                      borderColor: Colors.white,
                      backGroundColor: Colors.white,
                    ),
                    VariousProducts(
                      image: 'assets/images/snacks.png',
                      title: 'Snacks',
                      borderColor: Colors.white,
                      backGroundColor: Colors.white,
                    ),
                    VariousProducts(
                      image: 'assets/images/bevargers.png',
                      title: 'Beverages',
                      borderColor: Colors.white,
                      backGroundColor: Colors.white,
                    ),
                    VariousProducts(
                      image: 'assets/images/daily.png',
                      title: 'Dairy',
                      borderColor: Colors.white,
                      backGroundColor: Colors.white,
                    ),
                  ], // 3
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
