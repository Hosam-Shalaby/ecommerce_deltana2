import 'package:ecommerce_deltana2/ui/screens/login_screen.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_button.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_text_form_field.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_text_form_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
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
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text('Enter your credentials to continue',
                      style: TextStyle(fontSize: 13.sp, color: Colors.black38)),
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
              const Text(
                'By continuing you agree to our Terms of Service and Privacy Policy.',
                style: TextStyle(color: Colors.black54),
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
                  const Text('Already have an account ?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: const Text(
                        'Log In',
                        style:
                            TextStyle(color: Color.fromARGB(255, 32, 109, 83)),
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
