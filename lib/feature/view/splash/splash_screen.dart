import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/asset/asset_manager.dart';
import 'package:weather_app/feature/view/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _navigate();
    return  Scaffold(
      body: Center(
        child: Image.asset(ImageManager().logo, width: 80.w, height : 80.w),
      ),
    );
  }

  void _navigate()=> Future.delayed(const Duration(seconds: 3), ()=> Get.offAll(()=> const Homescreen()));
}