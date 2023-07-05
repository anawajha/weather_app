import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/feature/theme/text/text_manager.dart';

class MyTabBarTheme {
  static final MyTabBarTheme _instance = MyTabBarTheme._internal();
late ColorScheme scheme;
  factory MyTabBarTheme(ColorScheme scheme) {
    return _instance..scheme = scheme;
  }

  MyTabBarTheme._internal();

  TabBarTheme get light => TabBarTheme(
     labelColor: ColorManager().textHeading,
        unselectedLabelColor: scheme.onSecondary,
        labelStyle: TextManager().titleMedium.copyWith(
            fontWeight: FontWeight.bold, color: scheme.onPrimary),
        unselectedLabelStyle: TextManager().titleMedium.copyWith(
            fontWeight: FontWeight.bold),
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
      );

      TabBarTheme get dark => TabBarTheme(
        labelColor: scheme.onPrimary,
        unselectedLabelColor: ColorManager().textBody2,
        labelStyle: TextManager().titleMedium.copyWith(
            fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextManager().titleLarge.copyWith(
            fontWeight: FontWeight.bold,),
          indicatorSize: TabBarIndicatorSize.tab
      );
}