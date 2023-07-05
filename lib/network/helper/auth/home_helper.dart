import 'package:logger/logger.dart';
import 'package:weather_app/feature/model/app/app_response.dart';
import 'package:weather_app/feature/model/network/api_response.dart';
import 'package:weather_app/feature/model/network/coord_model.dart';
import 'package:weather_app/feature/model/network/forcast_model.dart';
import 'package:weather_app/network/request/request_endpoint.dart';
import 'package:weather_app/network/request/request_header.dart';
import 'package:weather_app/network/request/request_manager.dart';
import 'package:weather_app/utils/constants/constants.dart';


class HomeHelper {
  HomeHelper._();
  static final HomeHelper _instance = HomeHelper._();

  factory HomeHelper() => _instance;

  Future<AppResponse> getForcasts({required CoordModel coordinates}) async {
   Map<String, dynamic> params = {
    'lat' : coordinates.lat,
    'lon' : coordinates.lon,
    'cnt' : 9,
    'units' : 'metric',
    'appid' : Constants().apiKey,
   };
    return await RequestManager()
        .get(
            url: RequestEndpoint().getWeatherForcasts,
            header: RequestHeader.default_,
            queryParameters: params)
        .then((response) {
      ApiResponse apiRes = ApiResponse.fromJson(response.data);
      Logger().i(apiRes.data);
      dynamic data;
      if (apiRes.success) {
        ForcastModel user = ForcastModel.fromJson(apiRes.data);
        data = user;
      }
      return AppResponse(
          status: apiRes.success, message_: apiRes.message.toString(), data: data);
    }).catchError((e) { 
      Logger().e(e.toString());
      return AppResponse();});
  }
}
