import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/feature/theme/text/text_manager.dart';
import 'package:weather_app/utils/extensions/color_extension.dart';

class MyBottomNavBarTheme {
  static final MyBottomNavBarTheme _instance = MyBottomNavBarTheme._internal();
  late ColorScheme scheme;
  factory MyBottomNavBarTheme(ColorScheme scheme) {
    return _instance..scheme = scheme;
  }

  MyBottomNavBarTheme._internal();

  BottomNavigationBarThemeData get light => BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: false,
    backgroundColor: scheme.background,
    unselectedLabelStyle: TextManager().bodySmall,
    showSelectedLabels: false,
    selectedLabelStyle: TextManager().bodySmall,
    selectedItemColor: scheme.primary,
    selectedIconTheme: IconThemeData(
      size: 32.w
    ),
    unselectedIconTheme: IconThemeData(
      size: 32.w
    ),
    unselectedItemColor: scheme.onBackground.alphaPercent(0.25),
  );

  BottomNavigationBarThemeData get dark => BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: false,
    backgroundColor: scheme.background,
    unselectedLabelStyle: TextManager().bodySmall,
    showSelectedLabels: false,
    selectedLabelStyle: TextManager().bodySmall,
    selectedItemColor: scheme.primary,
    unselectedItemColor: scheme.onBackground.alphaPercent(0.25),
  );
}
