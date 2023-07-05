import 'package:flutter/material.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';

class SchemeManager {
  static final SchemeManager _instance = SchemeManager._internal();
  factory SchemeManager() => _instance;

  SchemeManager._internal();
  ColorScheme get light => ColorScheme.light(
      primary: ColorManager().primary,
      onPrimary: ColorManager().textHeadingDark,
      primaryContainer: ColorManager().primaryContainer,
      background: ColorManager().background,
      onBackground: ColorManager().textBody,
      secondary: ColorManager().secondary,
      onSecondary: ColorManager().textBody2,
      outline: ColorManager().outline,
      outlineVariant: ColorManager().outlineVariant,
      brightness: Brightness.light);

  ColorScheme get dark => ColorScheme.dark(
      primary: ColorManager().primary,
      onPrimary: ColorManager().textHeadingDark,
      primaryContainer: ColorManager().primaryContainerDark,
      background: ColorManager().backgroundDark,
      onBackground: ColorManager().textBody,
      secondary: ColorManager().secondary,
      onSecondary: ColorManager().textBody2,
      outline: ColorManager().outline,
      outlineVariant: ColorManager().outlineVariant,
      brightness: Brightness.dark);
}
