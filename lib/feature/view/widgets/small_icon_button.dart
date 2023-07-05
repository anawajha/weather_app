import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/utils/utils.dart';

class SmallIconButton extends StatelessWidget {
  const SmallIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color,
  });

  final IconData icon;
  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return InkWell(
        borderRadius: BorderRadius.circular(20.r),
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Icon(
            icon,
            size: 20.w,
            color: color,
          ),
        ));
  }
}
