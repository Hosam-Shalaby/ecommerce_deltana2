import 'package:ecommerce_deltana2/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Login Screen/login_screen.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({super.key});
  static const String routeName = 'SelectLocationScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/map.png', // استبدل هذا بالمسار الصحيح لصورتك
                  height: 140.h,
                ),
                SizedBox(height: 15.h),
                Text(
                  'Select Your Location',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Switch on your location to stay in tune with\nwhat’s happening in your area',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Zone',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: 40,
              child: DropdownButtonFormField<String>(
                items: ['Berlin', 'Munich', 'Hamburg']
                    .map((zone) => DropdownMenuItem(
                          value: zone,
                          child: Text(
                            zone,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Area',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            SizedBox(
              height: 40,
              child: DropdownButtonFormField<String>(
                hint: const Text(
                  'Types of your area',
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                ),
                items: ['Area 1', 'Area 2', 'Area 3']
                    .map((area) => DropdownMenuItem(
                          value: area,
                          child: Text(
                            area,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 30.h),

            // const Spacer(),
            CustomButton(
                text: 'Submit',
                height: 50.h,
                width: 350.w,
                radius: 10.r,
                onTap: LoginScreen.routeName),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
