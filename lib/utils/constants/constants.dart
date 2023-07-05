import 'package:flutter/material.dart';

class Constants {
  static final Constants _instance = Constants._internal();

  factory Constants() {
    return _instance;
  }

  Constants._internal();
  
  final String font = 'SF';
  final String apiKey = '1f3daeb0c65bb962b5af11f9822ff1e6';
  final String enLangCode = 'en';
  final String arLangCode = 'ar';
  final String appName = "";
  final String fullDateTimeFormat = "dd MMM yyyy,  hh:mm a";
  final String weatherDateTimeFormat = "yyyy-mm-dd hh:mm:ss";
  final String urlUserPlacholder = "https://jenalk.ahdtech.com/dev/assets/img/no-user.png";

  final Size designSize = const Size(392.72, 805.0);
}
