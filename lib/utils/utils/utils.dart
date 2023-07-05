import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/feature/view/widgets/app_snackbar.dart';
import 'package:weather_app/feature/view/widgets/progress_dialog.dart';
import 'package:weather_app/utils/constants/constants.dart';

class Utils {
  static final Utils _instance = Utils._internal();

  factory Utils() {
    return _instance;
  }

  Utils._internal();

  mainSnack(
      {required String body,
      Color? backgroundColor,
      Color? textColor,
      String? icon}) {
    Get.showSnackbar(
      AppSnackBar(body: body, textColor: textColor, backgroundColor: backgroundColor, icon: icon,) as GetSnackBar
    );
  }

  snackSuccess({String? title, required String body}) {
    mainSnack(
        body: body,
        backgroundColor: ColorManager().successBackground,
        textColor: ColorManager().success);
  }

  snackError({String? title, required String body}) {
    mainSnack(
        body: body,
        backgroundColor: ColorManager().errorBackground,
        textColor: ColorManager().error);
  }

  screenUtil(BuildContext context) {
    ScreenUtil.init(context,
        minTextAdapt: true, designSize: Constants().designSize);
  }

  BouncingScrollPhysics getIosScroll() {
    return const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
  }


  void changeDeviceOrientation({required DeviceOrientation orientation}) {
    SystemChrome.setPreferredOrientations([orientation]);
  }

  bool isArabic() {
    return Get.locale?.languageCode == Constants().arLangCode;
  }

  void showProgressDialog() {
    Get.dialog(const ProgressDialog(), barrierDismissible: false);
  }

  void hideProgressDialog() {
    Get.back();
  }

}

