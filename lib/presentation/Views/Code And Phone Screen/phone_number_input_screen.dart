import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../widgets/custom_button.dart';
import 'code_number_input_screen.dart';

class PhoneNumberInputScreen extends StatefulWidget {
  const PhoneNumberInputScreen({super.key});
  static const String routeName = 'PhoneNumberInputScreen';

  @override
  _PhoneNumberInputScreenState createState() => _PhoneNumberInputScreenState();
}

class _PhoneNumberInputScreenState extends State<PhoneNumberInputScreen> {
  PhoneNumber number = PhoneNumber(isoCode: 'DE');
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
            Text('Enter your mobile number',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20.h),
            Text('Mobile Number',
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8.h),
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                useEmoji: true,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle:
                  TextStyle(color: Colors.black, fontSize: 18.sp),
              initialValue: number,
              textFieldController: TextEditingController(),
              formatInput: false,
              inputDecoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                disabledBorder: InputBorder.none,
                border: UnderlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              spaceBetweenSelectorAndTextField: 0,
            ),
            Divider(
              height: 2.h,
              thickness: 1,
            ),
            const Spacer(),
            Align(
                alignment: Alignment.bottomRight,
                child: CustomButton(
                    fontSize: 35.sp,
                    text: '>',
                    height: 67.h,
                    width: 67.h,
                    radius: 35.r,
                    onTap: CodeVerificationScreen.routeName))
          ],
        ),
      ),
    );
  }
}
