import 'package:ecommerce_deltana2/presentation/Views/Wish%20List%20Screen/wish_list.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, WishList.routeName);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        height: 90.h,
        width: 343.w,
        child: Row(
          children: [
            Container(
              height: 44.h,
              width: 44.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
              child: Image.asset('assets/images/his.png'),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order #345 ',
                    maxLines: null,
                    overflow: TextOverflow.visible,
                    style: Theme.of(context).textTheme.bodyMedium),
                const Text('Delivered',
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorsConstant.mainColor,
                    )),
                Text('October 26, 2014',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const Spacer(),
            const Text('৳700',
                style: TextStyle(
                    fontSize: 20,
                    color: ColorsConstant.orangeColor,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
