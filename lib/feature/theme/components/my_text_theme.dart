

import 'package:flutter/material.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/feature/theme/text/text_manager.dart';

class MyTextTheme{
  static final MyTextTheme _instance = MyTextTheme._internal();
late ColorScheme scheme;
  factory MyTextTheme(ColorScheme scheme) {
    return _instance..scheme = scheme;
  }

  MyTextTheme._internal();

    TextTheme textAppTheme = TextTheme(
        displayLarge: TextManager().displayLarge,
        displayMedium: TextManager().displayMedium,
        displaySmall: TextManager().displaySmall,
        headlineLarge: TextManager().headlineLarge,
        headlineMedium: TextManager().headlineMedium,
        headlineSmall: TextManager().headlineSmall,
        titleLarge: TextManager().titleLarge,
        titleMedium: TextManager().titleMedium,
        titleSmall: TextManager().titleSmall,
        bodyLarge: TextManager().bodyLarge,
        bodyMedium: TextManager().bodyMedium,
        bodySmall: TextManager().bodySmall,
        labelLarge: TextManager().labelLarge,
        labelMedium: TextManager().labelMedium,
        labelSmall: TextManager().labelSmall      
      );

      TextTheme textAppThemeDark = TextTheme(
        displayLarge: TextManager().displayLarge.copyWith(color: ColorManager().textHeadingDark),
        displayMedium: TextManager().displayMedium.copyWith(color: ColorManager().textHeadingDark),
        displaySmall: TextManager().displaySmall.copyWith(color: ColorManager().textHeadingDark),
        headlineLarge: TextManager().headlineLarge.copyWith(color: ColorManager().textHeadingDark),
        headlineMedium: TextManager().headlineMedium.copyWith(color: ColorManager().textHeadingDark),
        headlineSmall: TextManager().headlineSmall.copyWith(color: ColorManager().textHeadingDark),
        titleLarge: TextManager().titleLarge.copyWith(color: ColorManager().textHeadingDark),
        titleMedium: TextManager().titleMedium.copyWith(color: ColorManager().textHeadingDark),
        titleSmall: TextManager().titleSmall.copyWith(color: ColorManager().textHeadingDark),
        labelLarge: TextManager().labelLarge.copyWith(color: ColorManager().textHeadingDark),
        labelMedium: TextManager().labelMedium.copyWith(color: ColorManager().textHeadingDark),
        labelSmall: TextManager().labelSmall.copyWith(color: ColorManager().textHeadingDark), 
        bodyLarge: TextManager().bodyLarge.copyWith(color: ColorManager().textBodyDark),
        bodyMedium: TextManager().bodyMedium.copyWith(color: ColorManager().textBodyDark),
        bodySmall: TextManager().bodySmall.copyWith(color: ColorManager().textBodyDark)
      );
}