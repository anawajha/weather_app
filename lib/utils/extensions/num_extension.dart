import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExtension on num{

  SizedBox get spaceX => SizedBox(width: toDouble().w,);
  SizedBox get spaceY => SizedBox(height: toDouble().h,);

  BorderRadius get raduis => BorderRadius.circular(toDouble().r);
  BorderRadius get raduisBottom => BorderRadius.vertical(bottom : Radius.circular( toDouble().r));
  BorderRadiusGeometry get raduisEnd => BorderRadiusDirectional.horizontal(end : Radius.circular( toDouble().r));
  BorderRadius get raduisTop => BorderRadius.vertical(top : Radius.circular( toDouble().r));

  EdgeInsetsGeometry get padding => EdgeInsets.all(toDouble().w);
  EdgeInsetsGeometry get paddingH => EdgeInsets.symmetric(horizontal: toDouble().w);
  EdgeInsetsGeometry get paddingV => EdgeInsets.symmetric(vertical: toDouble().h);
  EdgeInsetsGeometry get paddingTop => EdgeInsets.only(top: toDouble().h);
  EdgeInsetsGeometry get paddingBottom => EdgeInsets.only(bottom: toDouble().h);
}