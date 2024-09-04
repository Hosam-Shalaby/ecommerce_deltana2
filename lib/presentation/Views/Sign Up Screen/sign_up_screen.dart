import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_text_form_password.dart';
import '../Login Screen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String routeName = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Center(
                child: SizedBox(
                    height: 60.h,
                    width: 60.w,
                    child: Image.asset('assets/images/login.png')),
              ),
              SizedBox(height: 50.h),
              Row(
                children: [
                  Text('Sign Up',
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
              Row(
                children: [
                  Text('Enter your credentials to continue',
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              CustomTextFormField(
                label: 'Username',
              ),
              CustomTextFormField(
                label: 'Email',
              ),
              CustomTextFormFieldPassword(),
              SizedBox(height: 10.h),
              Text(
                'By continuing you agree to our Terms of Service and Privacy Policy.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 20.h),
              // const Spacer(),
              CustomButton(
                  fontSize: 17.sp,
                  text: 'Sign Up',
                  height: 50.h,
                  width: 350.w,
                  radius: 10.r,
                  onTap: LoginScreen.routeName),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ?',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: ColorsConstant.mainColor, fontSize: 15.sp),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
