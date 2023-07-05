import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/asset/asset_manager.dart';
import 'package:weather_app/feature/view/home/widgets/today_time_forcast.dart';
import 'package:weather_app/feature/view/home/widgets/today_weather.dart';
import 'package:weather_app/feature/view/home/widgets/today_weather_summary.dart';
import 'package:weather_app/feature/view_model/home_view_model.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(builder: (logic) {
      return ListView(
        padding:
            EdgeInsets.only(right: 20.w, left: 20.w, top: 100.h, bottom: 20.h),
        children: [
          Image.asset(
            ImageManager().logo,
            width: Get.width / 2,
            height: Get.width / 2,
          ),
          24.spaceY,
          Text(
            '${logic.focast?.list?.first.main?.temp?.ceil()}°',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontSize: 96.sp),
            textAlign: TextAlign.center,
          ),
          12.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                  borderRadius: 20.raduis,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    child: Text(
                      logic.focast?.list?.first.weather?.first.main ?? '',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  )),
            ],
          ),
          32.spaceY,
          const TodayWeatherSummary(),
          16.spaceY,
          const TodayWeather(),
          8.spaceY,
          const TodayTimeForcast()
        ],
      );
    });
  }
}
