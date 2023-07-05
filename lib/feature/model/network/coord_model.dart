class CoordModel {
  double? lat;
  double? lon;

  CoordModel({this.lat, this.lon});

  CoordModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() => {
    'lat' : lat,
    'lon' : lon,
  };
}