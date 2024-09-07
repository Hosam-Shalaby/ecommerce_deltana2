import 'package:ecommerce_deltana2/presentation/Views/widgets/history_widget.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  static const String routeName = 'OrdersScreen';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:
              Text('Orders', style: Theme.of(context).textTheme.headlineMedium),
          bottom: const TabBar(
            indicatorColor: ColorsConstant.mainColor,
            labelStyle: TextStyle(
              color: ColorsConstant.mainColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              // backgroundColor: ColorsConstant.scaffoldColor
            ),
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/orders.png',
                    height: 370.h,
                    width: 370.w,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "There is no ongoing order right now.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    "You can order from home",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Center(
                child: Column(
              children: [
                SizedBox(height: 8.h),
                const HistoryWidget(),
                const Padding(padding: EdgeInsets.all(4.0), child: Divider()),
                const HistoryWidget(),
                const Padding(padding: EdgeInsets.all(4.0), child: Divider()),
                const HistoryWidget(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
