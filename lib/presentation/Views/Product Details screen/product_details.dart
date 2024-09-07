import 'package:ecommerce_deltana2/presentation/Views/widgets/botton_with_icon.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Orders Screen/orders_screen.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
  static const String routeName = 'ProductDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Product Details',
              style: Theme.of(context).textTheme.headlineMedium)),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Center(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(9)),
                  height: 308.h,
                  width: 294.w,
                  child: Image.asset('assets/images/product.png'),
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(7)),
                      height: 66.h,
                      width: 66.w,
                      child: Image.asset('assets/images/product.png')),
                  SizedBox(width: 20.w),
                  Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(7)),
                      height: 66.h,
                      width: 66.w,
                      child: Image.asset('assets/images/product1.png')),
                ],
              ),
              SizedBox(height: 10.h),
              Text('Arla DANO Cream Milk Powder Instant',
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: 10.h),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 KG',
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '৳182',
                      style: TextStyle(
                          color: ColorsConstant.mainColor,
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Image.asset('assets/images/sett.png')),
                  SizedBox(width: 5.w),
                  Text(
                    'Dairy Products',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Image.asset('assets/images/settt.png')),
                  SizedBox(width: 5.w),
                  Expanded(
                      child: Text(
                          style: Theme.of(context).textTheme.bodyMedium,
                          'Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,',
                          maxLines: null,
                          overflow: TextOverflow.visible))
                ],
              ),
              SizedBox(height: 20.h),
              Text('You can also check this items',
                  style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(
                    height: 121.h,
                    width: 115.w,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(9)),
                    child: Image.asset('assets/images/nido.png'),
                  ),
                  SizedBox(width: 15.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nestle Nido Full Cream\nMilk Powder Instant ',
                          maxLines: null,
                          overflow: TextOverflow.visible,
                          style: Theme.of(context).textTheme.bodyMedium),
                      const Text('৳342',
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          )),
                      const Text('৳270',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsConstant.orangeColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              SizedBox(width: 15.h),
              Row(
                children: [
                  Container(
                    height: 121.h,
                    width: 115.w,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(9)),
                    child: Image.asset('assets/images/product2.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nestle Nido Full Cream\nMilk Powder Instant ',
                          maxLines: null,
                          overflow: TextOverflow.visible,
                          style: Theme.of(context).textTheme.bodyMedium),
                      const Text('৳342 : ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          )),
                      const Text('৳270',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorsConstant.orangeColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.h),
              BottonWithIcon(
                radius: 10.r,
                text: 'Add to Bag',
                height: 48.h,
                width: 343.w,
                fontSize: 16,
                icon: 'assets/images/menu.png',
                onTap: OrdersScreen.routeName,
              ),
              SizedBox(height: 20.h),
            ],
          ))),
    );
  }
}
