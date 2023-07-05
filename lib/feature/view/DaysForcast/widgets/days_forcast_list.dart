
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/model/network/day_forcast_model.dart';
import 'package:weather_app/feature/view_model/days_forcast_view_model.dart';
import 'package:weather_app/utils/extensions/date_time_extension.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class DaysForcastsList extends StatelessWidget {
  const DaysForcastsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DayForcastViewModel>(
      builder: (logic) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (conetxt, index)=> DayForcastitem(forcast: logic.focast?.list?[index],), separatorBuilder: (context, index)=> 12.spaceY, itemCount: logic.focast?.list?.length ?? 0);
      }
    );
  }
}

class DayForcastitem extends StatelessWidget {
  const DayForcastitem({
    super.key, required this.forcast,
  });

  final DayForcastModel? forcast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(forcast?.dtTxt.getDayName() ?? '' , style: Theme.of(context).textTheme.bodyLarge,),
      8.spaceX,
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.water_drop_rounded),
         8.spaceX,
        Text(forcast?.weather?.first.main ?? '', style: Theme.of(context).textTheme.bodyLarge,),
        ],
      ),
       8.spaceX,
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Text('${forcast?.main?.tempMax?.ceil()}', style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),),
        4.spaceX,
        Text('${forcast?.main?.tempMin?.ceil()}', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.outline),),
        ],
      )
      ],
                      ),
    );
  }
}