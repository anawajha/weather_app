import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/feature/theme/color/scheme_manager.dart';
import 'package:weather_app/feature/theme/components/bottom_nav_bar_theme.dart';
import 'package:weather_app/feature/theme/components/my_button_theme.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/feature/theme/components/my_app_bar_theme.dart';
import 'package:weather_app/feature/theme/components/my_tab_bar_theme.dart';
import 'package:weather_app/feature/theme/components/text_field_theme.dart';
import 'package:weather_app/feature/theme/components/my_text_theme.dart';
import 'package:weather_app/feature/theme/text/text_manager.dart';
import 'package:weather_app/utils/constants/constants.dart';

class MyTheme {
    static final MyTheme _instance = MyTheme._internal();

  factory MyTheme() {
    return _instance;
  }

  MyTheme._internal();
  
  ThemeData lightTheme({required ColorScheme scheme}) {
    return ThemeData(
      primarySwatch: ColorManager().primaryLight,
      primaryColor: scheme.primary,
      useMaterial3: true,
      colorScheme: SchemeManager().light,
      fontFamily: Constants().font,
      scaffoldBackgroundColor: ColorManager().background,
      appBarTheme: MyAppBarTheme(scheme).light,
      textTheme: MyTextTheme(scheme).textAppTheme,
      elevatedButtonTheme: MyButtonTheme(scheme).elevatedButton,
      outlinedButtonTheme: MyButtonTheme(scheme).outlinedButton,
      textButtonTheme: MyButtonTheme(scheme).textButton,
      inputDecorationTheme: TextFieldTheme(scheme).light,
      tabBarTheme: MyTabBarTheme(scheme).light,
      bottomNavigationBarTheme: MyBottomNavBarTheme(scheme).light,
      
      popupMenuTheme: PopupMenuThemeData(
        position: PopupMenuPosition.under,
        labelTextStyle: MaterialStateProperty.all(TextManager().labelSmall),
        surfaceTintColor: ColorManager().background,
        elevation: 2,
        textStyle: TextManager().labelSmall,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r)),),

      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(ColorManager().primary),
        checkColor:  MaterialStatePropertyAll(ColorManager().background),
        side: BorderSide(
            color: ColorManager().checkboxBorder,
            width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),),),

      dialogBackgroundColor: ColorManager().background,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorManager().primary,
          foregroundColor: ColorManager().textHeading),


      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager().primary),

          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor:  scheme.background,
            surfaceTintColor:  scheme.background,
            modalBackgroundColor:  scheme.background,
            clipBehavior: Clip.antiAlias),

          dividerTheme: DividerThemeData(
            space: 0,
            color: ColorManager().outline,
            thickness: 1),

          cardTheme: CardTheme(
            color: scheme.background,
            surfaceTintColor: scheme.background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),),

          radioTheme: RadioThemeData(
            fillColor: MaterialStateProperty.all(scheme.primary),),

         switchTheme: SwitchThemeData(
            thumbColor: MaterialStatePropertyAll(scheme.primaryContainer),),
          badgeTheme: BadgeThemeData(
          textColor: ColorManager().white,),

        pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },)
    );
  }

  ThemeData darkTheme({required ColorScheme scheme}) {
    return ThemeData(
      primarySwatch: ColorManager().primaryDark,
      primaryColor: scheme.primary,
      useMaterial3: true,
      colorScheme: scheme,
      fontFamily: Constants().font,
      appBarTheme: MyAppBarTheme(scheme).dark,
      textTheme: MyTextTheme(scheme).textAppThemeDark,
      elevatedButtonTheme: MyButtonTheme(scheme).elevatedButton,
      outlinedButtonTheme: MyButtonTheme(scheme).outlinedButton,
      textButtonTheme: MyButtonTheme(scheme).textButton,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManager().primary,),

      inputDecorationTheme: TextFieldTheme(scheme).dark,
      tabBarTheme: MyTabBarTheme(scheme).dark,
      bottomNavigationBarTheme: MyBottomNavBarTheme(scheme).dark,

      popupMenuTheme: PopupMenuThemeData(
        labelTextStyle: MaterialStateProperty.all(TextManager().labelSmall.copyWith(color: ColorManager().textHeadingDark)),
        position: PopupMenuPosition.under,
        surfaceTintColor: ColorManager().backgroundDark,
        color: ColorManager().backgroundDark,
        elevation: 2,
        textStyle: TextManager().labelSmall.copyWith(color: ColorManager().textHeadingDark),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r)),),

      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(scheme.primary),
        checkColor:  MaterialStatePropertyAll(scheme.background),
        side: BorderSide(
            color: ColorManager().checkboxBorder,
            width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),),),
      dialogBackgroundColor: ColorManager().backgroundDark2,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorManager().primary,
          foregroundColor: ColorManager().textHeadingDark),

      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: scheme.primary),
             bottomSheetTheme: BottomSheetThemeData(
            backgroundColor:  scheme.background,
            surfaceTintColor:  scheme.background,
            modalBackgroundColor:  scheme.background,
            clipBehavior: Clip.antiAlias),

            dividerTheme: DividerThemeData(
              space: 0,
            color: ColorManager().outline,
            thickness: 1),

            cardTheme: CardTheme(
            color: scheme.background,
            surfaceTintColor: scheme.background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),),

          radioTheme: RadioThemeData(
            fillColor: MaterialStateProperty.all(scheme.primary),),

         switchTheme: SwitchThemeData(
            thumbColor: MaterialStatePropertyAll(scheme.primaryContainer)),
          badgeTheme: BadgeThemeData(
          textColor: ColorManager().white,),

        pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS : ZoomPageTransitionsBuilder()
          },),
           
    );
  }
}
