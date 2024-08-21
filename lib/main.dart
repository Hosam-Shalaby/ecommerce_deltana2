import 'package:ecommerce_deltana2/ui/screens/login_screen.dart';
import 'package:ecommerce_deltana2/ui/screens/phone_number_input_screen.dart';
import 'package:ecommerce_deltana2/ui/screens/select_location_screen.dart';
import 'package:ecommerce_deltana2/ui/screens/sign_up_screen.dart';
import 'package:ecommerce_deltana2/ui/screens/on_bording_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'ui/screens/code_number_input_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(routes: {
            PhoneNumberInputScreen.routeName: (context) =>
                const PhoneNumberInputScreen(),
            CodeVerificationScreen.routeName: (context) =>
                const CodeVerificationScreen(),
            SelectLocationScreen.routeName: (context) =>
                const SelectLocationScreen(),
            LoginScreen.routeName: (context) => const LoginScreen(),
            SignUpScreen.routeName: (context) => const SignUpScreen(),
          }, debugShowCheckedModeBanner: false, home: const OnBordingScreen());
        });
  }
}
