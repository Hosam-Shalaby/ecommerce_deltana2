import 'package:ecommerce_deltana2/ui/screens/sign_up_screen.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_button.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_text_form_field.dart';
import 'package:ecommerce_deltana2/ui/widgets/custom_text_form_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.start,
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
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text('Enter your email and password',
                      style: TextStyle(fontSize: 13.sp, color: Colors.black38)),
                ],
              ),
              CustomTextFormField(
                label: 'Email',
              ),
              CustomTextFormFieldPassword(),
              SizedBox(height: 10.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password ?',
                    style: TextStyle(color: Colors.black87),
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
                  onTap: SignUpScreen.routeName),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: const Text(
                        'Sign Up',
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
