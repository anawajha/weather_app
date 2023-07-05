import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/view/DaysForcast/days_forcast_screen.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Today',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        InkWell(
          onTap: () => Get.to(() => const DaysForcastScreen()),
          borderRadius: 8.raduis,
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '5 days',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                4.spaceX,
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.w,
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
