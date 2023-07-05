
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/feature/model/network/day_forcast_model.dart';
import 'package:weather_app/utils/extensions/date_time_extension.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class ForcastWeatherItem extends StatelessWidget {
  const ForcastWeatherItem({
    super.key, required this.dayForcast,
  });

  final DayForcastModel? dayForcast;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: 16.raduis,
      color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${dayForcast?.main?.temp?.floor()}°', style: Theme.of(context).textTheme.labelLarge,),
            Icon(Icons.electric_bolt, size: 32.w,),
            Text(dayForcast?.dtTxt?.getTime() ?? '', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
      ),
    );
  
  }
}