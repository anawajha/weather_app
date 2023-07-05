import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/utils/utils.dart';

class Clickable extends StatelessWidget {
  const Clickable(
      {super.key, required this.child, this.onClilc, this.color, this.raduis});
  final Widget child;
  final void Function()? onClilc;
  final Color? color;
  final double? raduis;

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return InkWell(
      // overlayColor: MaterialStateProperty.all<Color?>(color ??
      //     Theme.of(context).colorScheme.primaryContainer.withOpacity(0.7)),
      borderRadius: BorderRadius.circular(raduis?.r ?? 12.r),
      onTap: onClilc,
      child: child,
    );
  }
}
