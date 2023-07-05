import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

extension DateTimeFormatter on DateTime? {

  String getDateFormatted({String? format}) {
    initializeDateFormatting('en');
    return DateFormat(format ?? 'dd MMM yyyy', 'en')
        .format(this ?? DateTime.now());
  }

  String getTime({String? format}) {
    initializeDateFormatting('en');
    return DateFormat(format ?? 'hh:mm a', 'en')
        .format(this ?? DateTime.now());
  }

  String getDayName({String? format}) {
    initializeDateFormatting('en');
    return DateFormat(format ?? 'EEEE', 'en')
        .format(this ?? DateTime.now());
  }
} 