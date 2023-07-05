class RainModel {
  double? d3h;

  RainModel({this.d3h});

  RainModel.fromJson(Map<String, dynamic> json) {
    d3h = json['3h'];
  }

  Map<String, dynamic> toJson() => {
    '3h' : d3h,
  };
}