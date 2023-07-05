import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/theme/asset/asset_manager.dart';
import 'package:weather_app/feature/view/DaysForcast/days_forcast_screen.dart';
import 'package:weather_app/feature/view/home/widgets/forcast_weather_item.dart';
import 'package:weather_app/feature/view/home/widgets/weather_summary_item.dart';
import 'package:weather_app/feature/view_model/home_view_model.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';
import 'package:weather_app/utils/utils/my_get_utils.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeViewModel>(
        initState: (_)=> MyGetUtils().put(HomeViewModel()),
        builder: (logic) {
          return ListView(
            padding: EdgeInsets.only(right: 20.w,left: 20.w, top: 100.h, bottom: 20.h),
            children: [
              Image.asset(ImageManager().logo, width: Get.width / 2, height: Get.width / 2,),
              24.spaceY,
              Text('23', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 96.sp), textAlign: TextAlign.center,),
              12.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                    borderRadius: 20.raduis,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                      child: Text('Cloudy', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today', style: Theme.of(context).textTheme.labelLarge,),
                  InkWell(
                    onTap: ()=> Get.to(()=> const DaysForcastScreen()),
                    borderRadius: 8.raduis,
                    child: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('5 days', style: Theme.of(context).textTheme.bodyMedium,),
                          4.spaceX,
                          Icon(Icons.arrow_forward_ios, size: 12.w, color: Theme.of(context).textTheme.bodyMedium?.color,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              8.spaceY,
              SizedBox(
                height: 110.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: logic.focast?.list?.length ?? 0, 
                  itemBuilder: (context, index)=>  ForcastWeatherItem(dayForcast: logic.focast?.list?[index],)
                  , separatorBuilder: (context, index)=> SizedBox(width: 12.w,)),
              )
            ],
          );
        }
      ),
    );
  }
}

