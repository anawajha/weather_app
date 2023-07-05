
class CloudModel {
  num? all;

  CloudModel({this.all});

  CloudModel.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }

  Map<String, dynamic> toJson() => {
    'all' : all,
  };
}
