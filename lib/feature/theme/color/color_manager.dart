import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions/color_extension.dart';

class ColorManager {
ColorManager._();

static final ColorManager _instance = ColorManager._();

factory ColorManager ()=> _instance;

  final Color primary = const Color(0xFF6CC000);
  final Color secondary = const Color(0xFF0EA772);

  final Color primaryContainer = const Color(0xFFE9F0FF);
  final Color primaryContainerDark = const Color(0xFF6CC000).withOpacity(0.2);

  final Color white = const Color(0xFFFFFFFF);
  final Color black = const Color(0xFF000000);

  final Color outline = const Color(0xFF8E8E8E).alphaPercent(0.72);
  final Color outlineVariant = const Color(0xFFEAEAEA).alphaPercent(0.59);

  final Color textBodyDark = const Color.fromARGB(255, 219, 219, 219);
  final Color textHeadingDark = const Color(0xFFFFFFFF);
  final Color background = const Color(0xFFFFFFFF);
  final Color backgroundDark2 = const Color(0xFF1B2430);
  final Color backgroundDark = const Color.fromARGB(255, 31, 40, 53);

  final Color textHeading = const Color(0xFF141F1F);
  final Color textBody = const Color(0xFF4E5556);
  final Color textBody2 = const Color(0xFFA4ACAD);
  
  final Color success = const Color(0xFF22A046);
  final Color successBackground = const Color(0xFFDEFCE6).withOpacity(0.9);
  final Color error = const Color(0xFFED2727);
  final Color errorBackground = const Color(0xFFFFC6C6).withOpacity(0.9);

  final Color disabled = const Color(0xFF818284);
  final Color secondaryButtonBorder = const Color(0xFFA4ACAD);
  final Color checkboxBorder = const Color(0xFFDDDFDF);

  MaterialColor primaryLight =
      MaterialColor(0xFF3062C8, _primarySwatchLight);
  MaterialColor primaryDark =
      MaterialColor(0xFF3062C8, _primarySwatchDark);

  static final Map<int, Color> _primarySwatchDark = {
    50: const Color(0xFF61ad00),
    100: const Color(0xFF569a00),
    200: const Color(0xFF4c8600),
    300: const Color(0xFF417300),
    400: const Color(0xFF366000),
    500: const Color(0xFF2b4d00),
    600: const Color(0xFF203a00),
    700: const Color(0xFF162600),
    800: const Color(0xFF0b1300),
    900: const Color(0xFF000000),
  };

  static final Map<int, Color> _primarySwatchLight = {
    50: const Color(0xFF7bc61a),
    100: const Color(0xFF89cd33),
    200: const Color(0xFF98d34d),
    300: const Color(0xFFa7d966),
    400: const Color(0xFFb6e080),
    500: const Color(0xFFc4e699),
    600: const Color(0xFFd3ecb3),
    700: const Color(0xFFe2f2cc),
    800: const Color(0xFFf0f9e6),
    900: const Color(0xFFFFFFFF),
  };
}
