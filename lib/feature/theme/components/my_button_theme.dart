import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/text/text_manager.dart';


class MyButtonTheme{
   static final MyButtonTheme _instance = MyButtonTheme._internal();
late ColorScheme scheme;
  factory MyButtonTheme(ColorScheme scheme) {
    return _instance..scheme = scheme;
  }

  MyButtonTheme._internal();

  ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        side: BorderSide.none,
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r)
        ),
        minimumSize: Size(double.infinity, 57.h),
        textStyle: TextManager().headlineSmall
      ),);

      OutlinedButtonThemeData get outlinedButton => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: scheme.primary,
        side: BorderSide(color: scheme.primary),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
        minimumSize: Size(double.infinity, 57.h),
        textStyle: TextManager().headlineSmall.copyWith(color: scheme.primary)
      ),
      );

      TextButtonThemeData get textButton => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.primary,
          maximumSize: Size(Get.width, 57.h),
          minimumSize: Size(50.w, 20.h),
        textStyle: TextManager().labelMedium
      ),
      );
}