import 'package:ecommerce_deltana2/presentation/Views/Product%20Details%20screen/product_details.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});
  static const String routeName = 'WishList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Wish List',
              style: Theme.of(context).textTheme.headlineMedium)),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          InkWell(onTap: () {
            Navigator.pushNamed(context, ProductDetails.routeName);
          },
            child: Row(children: [
              Container(
                height: 121.h,
                width: 115.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
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
                            fontWeight: FontWeight.bold))
                  ])
            ]),
          ),
          const Padding(padding: EdgeInsets.all(4.0), child: Divider()),
          InkWell(onTap: () {
            Navigator.pushNamed(context, ProductDetails.routeName);
          },
            child: Row(children: [
              Container(
                height: 121.h,
                width: 115.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
                child: Image.asset('assets/images/product2.png'),
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
                  ])
            ]),
          ),
          const Padding(padding: EdgeInsets.all(4.0), child: Divider()),
        ],
      ),
    );
  }
}
