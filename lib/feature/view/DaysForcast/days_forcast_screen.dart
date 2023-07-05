import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/asset/asset_manager.dart';
import 'package:weather_app/feature/view/home/widgets/weather_summary_item.dart';
import 'package:weather_app/feature/view_model/days_forcast_view_model.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';
import 'package:weather_app/utils/utils/my_get_utils.dart';

class DaysForcastScreen extends StatelessWidget {
  const DaysForcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<DayForcastViewModel>(
        initState: (_)=> MyGetUtils().put(DayForcastViewModel()),
        builder: (logic) {
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h,),
            children: [
              Row(
                children: [
                  Image.asset(ImageManager().logo ,width: Get.width /3 ,),
                  24.spaceX,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tommorow', style: Theme.of(context).textTheme.headlineMedium,),
                      Row(
                        children: [
                      Text(logic.focast?.list?.first.main?.tempMax?.toDouble().toStringAsFixed(0) ?? '', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 64.sp),),
                      Text('/${logic.focast?.list?.first.main?.tempMin?.toDouble().toStringAsFixed(0)}', style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Theme.of(context).colorScheme.outline),),
                        ],
                      ),
                      Text(logic.focast?.list?.first.weather?.first.main.toString() ?? '', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).colorScheme.outline),),
                    ],
                  )),
                ],
              ),
                 32.spaceY,
                  Row(
                    children: [
                      Expanded(child: WeatherSummaryItem(value : '${logic.focast?.list?.first.wind?.speed ?? 0.0} KM', label: 'Wind', icon: Icons.wind_power_rounded,)),
                      12.spaceX,
                      Expanded(child: WeatherSummaryItem(value : '${logic.focast?.list?.first.main?.humidity ?? 0.0} %', label: 'Humidity', icon: Icons.water_drop_rounded,)),
                      12.spaceX,
                      Expanded(child: WeatherSummaryItem(value : '${logic.focast?.list?.first.main?.seaLevel ?? 0.0} MB', label: 'Humidity', icon: Icons.thermostat_auto_sharp,))
                    ],
                  ),
                  16.spaceY,

                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (conetxt, index)=> Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Mon', style: Theme.of(context).textTheme.bodyLarge,),
                      8.spaceX,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.water_drop_rounded),
                         8.spaceX,
                        Text('Mon', style: Theme.of(context).textTheme.bodyLarge,),
                        ],
                      ),
                       8.spaceX,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Text('20', style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),),
                        4.spaceX,
                        Text('16', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.outline),),
                        ],
                      )
                    
                      ],
                                      ),
                    ), separatorBuilder: (context, index)=> 12.spaceY, itemCount: logic.focast?.list?.length ?? 0)
            ],

          );
        }
      ),
    );
  }
}