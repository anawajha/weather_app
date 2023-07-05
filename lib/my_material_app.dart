import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/color/scheme_manager.dart';
import 'package:weather_app/feature/theme/my_theme.dart';
import 'package:weather_app/feature/view/splash/splash_screen.dart';
import 'package:weather_app/utils/constants/constants.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: Constants().designSize,
      builder: (context, widget) => GetMaterialApp(
        title: Constants().appName,
        debugShowCheckedModeBanner: false,
        smartManagement: SmartManagement.keepFactory,
        theme: MyTheme().lightTheme(scheme: SchemeManager().light),
        home: const SplashScreen(),
        locale: const Locale('en'),
      ),
      // for future work we add highContrastTheme && highContrastDarkTheme
    );
  }
}
