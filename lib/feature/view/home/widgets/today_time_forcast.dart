import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/view/home/widgets/forcast_weather_item.dart';
import 'package:weather_app/feature/view_model/home_view_model.dart';

class TodayTimeForcast extends StatelessWidget {
  const TodayTimeForcast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(builder: (logic) {
      return SizedBox(
        height: 110.h,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: logic.focast?.list?.length ?? 0,
            itemBuilder: (context, index) => ForcastWeatherItem(
                  dayForcast: logic.focast?.list?[index],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: 12.w,
                )),
      );
    });
  }
}
