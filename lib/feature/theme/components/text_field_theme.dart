import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/feature/theme/components/my_text_theme.dart';
import 'package:weather_app/feature/theme/text/text_manager.dart';

class TextFieldTheme {
   static final TextFieldTheme _instance = TextFieldTheme._internal();
late ColorScheme scheme;
  factory TextFieldTheme(ColorScheme scheme) {
    return _instance..scheme = scheme;
  }

  TextFieldTheme._internal();

  InputDecorationTheme get light =>
     InputDecorationTheme(
        hintStyle: TextManager().headlineSmall.copyWith(
          fontWeight: FontWeight.w500,
          color: ColorManager().textHeadingDark,),
        labelStyle: MyTextTheme(scheme).textAppTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w500, color: ColorManager().textHeadingDark),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().error)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
      );

      InputDecorationTheme get dark => InputDecorationTheme(
        hintStyle: TextManager().headlineSmall.copyWith(
          fontWeight: FontWeight.w500,
          color: ColorManager().textHeadingDark,
        ),
        labelStyle: MyTextTheme(scheme).textAppTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w500, color: ColorManager().textHeadingDark),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().error)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.r),
            borderSide: BorderSide(color: ColorManager().textHeadingDark)),
      );
  
}