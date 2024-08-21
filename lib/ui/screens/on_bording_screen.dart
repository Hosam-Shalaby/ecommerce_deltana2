import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:ecommerce_deltana2/ui/screens/phone_number_input_screen.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 250.h,
              width: 350.w,
              child: Image.asset('assets/images/splash.png')),
          SizedBox(height: 80.h),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Welcome\nto our store',
                  style: TextStyle(
                      fontSize: 40.sp,
                      color: const Color(ColorsConstant.mainColor)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Text('Ger your groceries in as fast as one hour',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(ColorsConstant.mainColor))),
          SizedBox(height: 10.h),
          Padding(
              padding: const EdgeInsets.all(25.0),
              child: CustomButton(
                  fontSize: 17.sp,
                  onTap: PhoneNumberInputScreen.routeName,
                  text: 'Get Started',
                  height: 55.h,
                  width: 353.w,
                  radius: 19.r))
        ],
      ),
    );
  }
}
