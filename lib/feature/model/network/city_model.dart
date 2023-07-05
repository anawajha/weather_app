
import 'package:weather_app/feature/model/network/coord_model.dart';

class CityModel {
  int? id;
  String? name;
  CoordModel? coord;
  String? country;
  num? population;
  num? timezone;
  num? sunrise;
  num? sunset;

  CityModel(
      {this.id,
      this.name,
      this.coord,
      this.country,
      this.population,
      this.timezone,
      this.sunrise,
      this.sunset});

  CityModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? CoordModel.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    if (coord != null) ...{
      'coord' : coord!.toJson(),
    },
    'country' : country,
    'population' : population,
    'timezone' : timezone,
    'sunrise' : sunrise,
    'sunset' : sunset,
  };
}