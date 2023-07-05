// ignore_for_file: constant_identifier_names

class RequestEndpoint {
  static final RequestEndpoint _instance = RequestEndpoint._internal();

  factory RequestEndpoint () => _instance;

  RequestEndpoint._internal(); 

  static const String BASE_URL = 'http://api.openweathermap.org/';

  final String getWeatherForcasts = '${BASE_URL}data/2.5/forecast';

}




