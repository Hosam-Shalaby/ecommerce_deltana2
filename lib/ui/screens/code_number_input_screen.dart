import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:ecommerce_deltana2/ui/screens/select_location_screen.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeVerificationScreen extends StatefulWidget {
  static const String routeName = 'CodeVerificationScreen';

  const CodeVerificationScreen({super.key});

  @override
  _CodeVerificationScreenState createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your 4-digit code',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24.h),
            Text(
              'Code',
              style: TextStyle(fontSize: 16.sp, color: Colors.grey),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldHeight: 20,
                    fieldWidth: 10,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: false,
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  onCompleted: (v) {
                    print("Completed: $v");
                  },
                  onChanged: (value) {
                    print(value);
                  }),
            ),
            Divider(
              height: 2.h,
              thickness: 1,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Code',
                      style: TextStyle(color: Color(ColorsConstant.mainColor)),
                    )),
                CustomButton(
                    fontSize: 35.sp,
                    text: '>',
                    height: 67.h,
                    width: 67.w,
                    radius: 35.r,
                    onTap: SelectLocationScreen.routeName)
              ],
            )
          ],
        ),
      ),
    );
  }
}
