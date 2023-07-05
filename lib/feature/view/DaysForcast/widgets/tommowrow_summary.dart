import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/view/home/widgets/weather_summary_item.dart';
import 'package:weather_app/feature/view_model/days_forcast_view_model.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class TommorowSummary extends StatelessWidget {
  const TommorowSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DayForcastViewModel>(builder: (logic) {
      return Row(
        children: [
          Expanded(
              child: WeatherSummaryItem(
            value: '${logic.focast?.list?[1].wind?.speed ?? 0.0} KM',
            label: 'Wind',
            icon: Icons.wind_power_rounded,
          )),
          12.spaceX,
          Expanded(
              child: WeatherSummaryItem(
            value: '${logic.focast?.list?[1].main?.humidity ?? 0.0} %',
            label: 'Humidity',
            icon: Icons.water_drop_rounded,
          )),
          12.spaceX,
          Expanded(
              child: WeatherSummaryItem(
            value: '${logic.focast?.list?[1].main?.seaLevel ?? 0.0} MB',
            label: 'Humidity',
            icon: Icons.thermostat_auto_sharp,
          ))
        ],
      );
    });
  }
}
