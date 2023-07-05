import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';

class WeatherSummaryItem extends StatelessWidget {
  const WeatherSummaryItem({
    super.key,
    required this.label,
    required this.icon,
    required this.value,
  });

  final String label;
  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      elevation: 1,
      shadowColor: Theme.of(context).colorScheme.onBackground,
      borderRadius: 8.raduis,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Column(
          children: [
            Icon(
              icon,
            ),
            4.spaceY,
            Text(
              value,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            4.spaceY,
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
