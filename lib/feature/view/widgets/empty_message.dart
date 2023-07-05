import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/utils/utils.dart';

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({super.key, required this.message, this.icon, this.withImage = true});

  final String message;
  final IconData? icon;
  final bool withImage;

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(withImage) ... [
        Icon(icon ?? Icons.notes_rounded, size: 24.w, color: Theme.of(context).textTheme.bodyMedium?.color,),
        SizedBox(height: 20.h,),
        ],
        Text(message, style: Theme.of(context).textTheme.bodyMedium, maxLines: 3,)
      ],
    ),);
  }
}