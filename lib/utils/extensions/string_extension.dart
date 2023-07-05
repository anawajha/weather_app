import 'package:intl/intl.dart';
import 'package:weather_app/utils/constants/constants.dart';

extension GetText on String? {
  String get value => toString().trim();
}

extension DateConvertor on String? {

  DateTime getDateTimeFromLaravelTimestamp({required String? timestamp}) =>
     DateTime.parse(timestamp ?? '').toLocal();

  DateTime parseTime(String t) {
    return DateFormat("HH:mm").parse(t);
  }


  DateTime parseWeatherTime() {
    return DateFormat(Constants().weatherDateTimeFormat).parse(this ?? '');
  }
}
