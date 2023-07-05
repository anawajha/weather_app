import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/feature/theme/components/my_text_theme.dart';

class MyAppBarTheme {
  static final MyAppBarTheme _instance = MyAppBarTheme._internal();
late ColorScheme scheme;
  factory MyAppBarTheme(ColorScheme scheme) {
    return _instance..scheme = scheme;
  }

  MyAppBarTheme._internal();

  AppBarTheme get light => AppBarTheme(
      backgroundColor: scheme.background,
      elevation: 0,
      titleTextStyle: MyTextTheme(scheme).textAppTheme.headlineSmall
          ?.copyWith(fontWeight: FontWeight.w500, color: scheme.onBackground),
      centerTitle: false,
      iconTheme: IconThemeData(
        color: scheme.onBackground,
        
      ),
      
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: scheme.background,
          systemNavigationBarIconBrightness: Brightness.dark));

  AppBarTheme get dark => AppBarTheme(
      backgroundColor: scheme.background,
      elevation: 0,
      titleTextStyle: MyTextTheme(scheme).textAppThemeDark.headlineSmall
          ?.copyWith(fontWeight: FontWeight.w500, color: scheme.onBackground),
      centerTitle: false,
      iconTheme: IconThemeData(color: scheme.onBackground),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: scheme.background,
          systemNavigationBarIconBrightness: Brightness.light));
}
