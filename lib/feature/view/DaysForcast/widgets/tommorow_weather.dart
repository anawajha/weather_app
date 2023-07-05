import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/asset/asset_manager.dart';
import 'package:weather_app/feature/view_model/days_forcast_view_model.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class TommorowWeather extends StatelessWidget {
  const TommorowWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DayForcastViewModel>(builder: (logic) {
      return Row(
        children: [
          Image.asset(
            ImageManager().logo,
            width: Get.width / 3,
          ),
          24.spaceX,
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tommorow',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                children: [
                  Text(
                    logic.focast?.list?.first.main?.tempMax
                            ?.toDouble()
                            .toStringAsFixed(0) ??
                        '',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontSize: 64.sp),
                  ),
                  Text(
                    '/${logic.focast?.list?.first.main?.tempMin?.toDouble().toStringAsFixed(0)}',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.outline),
                  ),
                ],
              ),
              Text(
                logic.focast?.list?.first.weather?.first.main.toString() ?? '',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.outline),
              ),
            ],
          )),
        ],
      );
    });
  }
}
