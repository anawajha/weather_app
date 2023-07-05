import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/view/DaysForcast/widgets/days_forcast_list.dart';
import 'package:weather_app/feature/view/DaysForcast/widgets/tommorow_weather.dart';
import 'package:weather_app/feature/view/DaysForcast/widgets/tommowrow_summary.dart';
import 'package:weather_app/feature/view/widgets/empty_message.dart';
import 'package:weather_app/feature/view/widgets/loading.dart';
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
          initState: (_) => MyGetUtils().put(DayForcastViewModel()),
          builder: (logic) {
            if (logic.loading) {
              return const Loading();
            }else if(!logic.loading && logic.focast != null){
            return ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 24.h,
              ),
              children: [
                const TommorowWeather(),
                32.spaceY,
                const TommorowSummary(),
                16.spaceY,
                const DaysForcastsList()
              ],
            );
            }
            return const EmptyMessage(
                message: 'Check your internet connection and try again');
          }),
    );
  }
}
