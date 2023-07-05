
class Wind {
  Wind({speed, this.deg, this.gust});
  double? speed;
  num? deg;
  double? gust;


  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  Map<String, dynamic> toJson() => {
    'speed' : speed,
    'deg' : deg,
    'gust' : gust,
  };
}