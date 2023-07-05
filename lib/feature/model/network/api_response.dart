class ApiResponse {
    ApiResponse({
        this.cnt,
        this.code,
        this.message,
        this.data,
    });

    num? cnt;
    String? message;
    num? code;
    Map<String, dynamic>? data;

    factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        cnt: json['cnt'],
        message: json['message'].toString(),
        code: num.tryParse(json['cod']),
        data: {
          'list' : json['list'],
          'city' : json['city']
        },
    );

  bool get success => code == 201 || code == 200;
}