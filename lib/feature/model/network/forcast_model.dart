import 'package:weather_app/feature/model/network/city_model.dart';
import 'package:weather_app/feature/model/network/day_forcast_model.dart';

class ForcastModel {
  List<DayForcastModel>? list;
  CityModel? city;

  ForcastModel({this.list, this.city});

  ForcastModel.fromJson(Map<String, dynamic>? json) {
    if (json?['list'] != null) {
      list = <DayForcastModel>[];
      json?['list'].forEach((v) {
        list!.add(DayForcastModel.fromJson(v));
      });
    }
    city = json?['city'] != null ? CityModel.fromJson(json?['city']) : null;
  }

  Map<String, dynamic> toJson() => {
    if (list != null) ...{
      'list' : list!.map((v) => v.toJson()).toList(),
    },
    if (city != null) ...{
      'city' : city!.toJson(),
    }
  };
}


