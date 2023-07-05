import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/utils/constants/constants.dart';
import 'package:weather_app/utils/utils/utils.dart';

class AppSnackBar extends StatelessWidget {
  const AppSnackBar({super.key, required this.body, this.backgroundColor, this.textColor, this.icon});
      final String body;
      final Color? backgroundColor;
      final Color? textColor;
      final String? icon;
  @override
  Widget build(BuildContext context) {
        Utils().screenUtil(context);
    return GetSnackBar(
        snackPosition: SnackPosition.TOP,
        backgroundColor: backgroundColor ?? const Color(0xFF303030),
        duration: const Duration(milliseconds: 2500),
        borderRadius: 20.r,
        margin: EdgeInsets.symmetric(
            horizontal: 12.w, vertical: 12.h),
        padding: EdgeInsets.symmetric(
            horizontal: 32.w, vertical: 16.h),
        messageText: Text(
          body,
          maxLines: 2,
          style: TextStyle(
              color: textColor ?? ColorManager().white,
              fontFamily: Constants().font),
        ),
      );
  }
}