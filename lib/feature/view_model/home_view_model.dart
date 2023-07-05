import 'package:get/get.dart';
import 'package:weather_app/feature/model/network/coord_model.dart';
import 'package:weather_app/feature/model/network/forcast_model.dart';
import 'package:weather_app/network/helper/home_helper.dart';

class HomeViewModel extends GetxController {
  @override
  void onInit() {
    getWeatherForcastsForFiveDays();
    super.onInit();
  }

  ForcastModel? focast;

  bool loading = false;

  void changeLoadingStatus({bool loading = false}) {
    this.loading = loading;
    update();
  }

  void getWeatherForcastsForFiveDays() async {
    changeLoadingStatus(loading: true);
    await HomeHelper()
        .getForcasts(coordinates: CoordModel(lat: 31.5017, lon: 34.4668))
        .then((response) {
      focast = response.data;
    });
    changeLoadingStatus();
  }
}
