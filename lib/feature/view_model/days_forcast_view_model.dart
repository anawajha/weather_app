import 'package:get/get.dart';
import 'package:weather_app/feature/model/network/coord_model.dart';
import 'package:weather_app/feature/model/network/forcast_model.dart';
import 'package:weather_app/network/helper/home_helper.dart';
import 'package:weather_app/utils/extensions/date_time_extension.dart';

class DayForcastViewModel extends GetxController {
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
        .getForcasts(coordinates: CoordModel(lat: 31.5017, lon: 34.4668), cnt: 24)
        .then((response) {
      focast = response.data;
    });

    for (int i = 0; i < ((focast?.list?.length) ?? 0); i++){
    for (int i = 0; i < ((focast?.list?.length) ?? 0); i++){
        if (i != 0 && focast?.list?[i].dtTxt?.getDayName() == focast?.list?[i -1].dtTxt?.getDayName()) {
          focast?.list?.removeAt(i);
          update();
        }
      }
      }
    changeLoadingStatus();
  }
}