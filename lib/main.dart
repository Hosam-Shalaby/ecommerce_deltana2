import 'package:ecommerce_deltana2/config/theme_data.dart';
import 'package:ecommerce_deltana2/presentation/Views/On%20Boarding%20Screen/on_bording_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

import 'presentation/Views/Bottom Nav Bar/bottom_nav_bar.dart';
import 'presentation/Views/Code And Phone Screen/code_number_input_screen.dart';
import 'presentation/Views/Code And Phone Screen/phone_number_input_screen.dart';
import 'presentation/Views/Login Screen/login_screen.dart';

import 'presentation/Views/Select Location Screen/select_location_screen.dart';
import 'presentation/Views/Sign Up Screen/sign_up_screen.dart';
import 'presentation/Views/Products Screen/products_screen.dart';

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
          return MaterialApp(
              theme: MyThemeData.lightTheme,
              routes: {
                PhoneNumberInputScreen.routeName: (context) =>
                    const PhoneNumberInputScreen(),
                CodeVerificationScreen.routeName: (context) =>
                    const CodeVerificationScreen(),
                SelectLocationScreen.routeName: (context) =>
                    const SelectLocationScreen(),
                LoginScreen.routeName: (context) => const LoginScreen(),
                SignUpScreen.routeName: (context) => const SignUpScreen(),
                BottomNavBar.routeName: (context) => const BottomNavBar(),
                ProductsScreen.routeName: (context) => const ProductsScreen(),
              },
              debugShowCheckedModeBanner: false,
              home: const OnBordingScreen());
        });
  }
}
