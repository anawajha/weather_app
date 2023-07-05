import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/feature/theme/color/color_manager.dart';
import 'package:weather_app/utils/utils/utils.dart';

class AppPopupMenuButton extends StatelessWidget {
  const AppPopupMenuButton({
    super.key,
    required this.items,
  });

  final List<PopupMenuEntry> items;

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return Transform.scale(
      scaleX: 0.6,
      scaleY: 0.65,
      child: Material(
        color: ColorManager().outlineVariant,
        borderRadius: BorderRadius.circular(20.r),
        child: PopupMenuButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.more_vert_rounded,
              color: ColorManager().outline,
              size: 28.w,
            ),
            itemBuilder: (context) => items),
      ),
    );
  }
}
