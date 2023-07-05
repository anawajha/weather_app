
class SysModel {
  String? pod;

  SysModel({this.pod});

  SysModel.fromJson(Map<String, dynamic> json) {
    pod = json['pod'];
  }

  Map<String, dynamic> toJson() => {
    'pod' : pod,
  };
}