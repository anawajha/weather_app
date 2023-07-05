import 'package:weather_app/feature/model/network/cloud_model.dart';
import 'package:weather_app/feature/model/network/main_model.dart';
import 'package:weather_app/feature/model/network/rain_model.dart';
import 'package:weather_app/feature/model/network/sys_model.dart';
import 'package:weather_app/feature/model/network/weather_model.dart';
import 'package:weather_app/feature/model/network/wind_model.dart';
import 'package:weather_app/utils/extensions/string_extension.dart';

class DayForcastModel {
  num? dt;
  MainModel? main;
  List<Weather>? weather;
  CloudModel? clouds;
  Wind? wind;
  num? visibility;
  num? pop;
  RainModel? rain;
  SysModel? sys;
  DateTime? dtTxt;

  DayForcastModel(
      {this.dt,
      this.main,
      this.weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.rain,
      this.sys,
      this.dtTxt});

  DayForcastModel.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    main = json['main'] != null ?  MainModel.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add( Weather.fromJson(v));
      });
    }
    clouds =
        json['clouds'] != null ?  CloudModel.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ?  Wind.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    rain = json['rain'] != null ?  RainModel.fromJson(json['rain']) : null;
    sys = json['sys'] != null ?  SysModel.fromJson(json['sys']) : null;
    dtTxt = json['dt_txt'].toString().parseWeatherTime();
  }

  Map<String, dynamic> toJson() => {
    'dt' : dt,
    if (main != null) ...{
      'main' : main!.toJson(),
    },
    if (weather != null) ...{
      'weather' : weather!.map((v) => v.toJson()).toList(),
    },
    if (clouds != null) ...{
      'clouds' : clouds!.toJson(),
    },
    if (wind != null) ...{
      'wind' : wind!.toJson(),
    },
    'visibility' :  visibility,
    'pop' : pop,
    if (rain != null) ...{
      'rain': rain!.toJson(),
    },
    if (sys != null) ...{
      'sys' : sys!.toJson(),
    },
    'dt_txt' : dtTxt,
  };
}




