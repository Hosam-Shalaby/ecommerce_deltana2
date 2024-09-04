import 'package:ecommerce_deltana2/presentation/Views/widgets/custom_button.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_text_form_field.dart';
import '../widgets/custom_text_form_password.dart';
import '../Bottom Nav Bar/bottom_nav_bar.dart';
import '../Sign Up Screen/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Center(
                child: SizedBox(
                    height: 60.h,
                    width: 60.w,
                    child: Image.asset('assets/images/login.png')),
              ),
              SizedBox(height: 70.h),
              Row(
                children: [
                  Text('Login',
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Text('Enter your email and password',
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              CustomTextFormField(
                label: 'Email',
              ),
              CustomTextFormFieldPassword(),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password ?',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
              SizedBox(height: 50.h),
              CustomButton(
                  fontSize: 17.sp,
                  text: 'Log in',
                  height: 50.h,
                  width: 350.w,
                  radius: 10.r,
                  onTap: BottomNavBar.routeName),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: ColorsConstant.mainColor, fontSize: 15),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
