
import 'package:dio/dio.dart';
import 'package:weather_app/network/request/api_interceptor.dart';
import 'package:weather_app/network/request/request_endpoint.dart';
import 'package:weather_app/network/request/request_header.dart';
import 'dart:async';

class RequestManager {
  RequestManager._();
  static final RequestManager _instance = RequestManager._();

  factory RequestManager () => _instance;

  Dio? _dio;
  Dio init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: RequestEndpoint.BASE_URL,
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1),
        sendTimeout: const Duration(minutes: 1),
        receiveDataWhenStatusError: true,
        validateStatus: (status)  {
          return status! < 500;
        },
      ),
    );
    _dio?.interceptors.add(ApiInterceptor());
    return _dio!;
  }

  Future<Response> get({required String url, RequestHeader? header, Map<String, dynamic>? queryParameters}) async {
    return await _dio!.get(
      url,
      options: Options(headers: header?.headers),
      queryParameters: queryParameters,
    );
  }

  Future<Response> post(
      {var url,
      RequestHeader? header,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    return await _dio!.post(
      url,
      queryParameters: queryParameters,
      options: Options(headers: header?.headers),
      data: body,
    );
  }

  Future<Response> postFormData(
      {required String url, RequestHeader? header, Map<String, dynamic>? body}) async {
    return await _dio!.post(
      url,
      options: Options(headers: header?.headers),
      data: FormData.fromMap(body ?? {}),
    );
  }

    Future<Response> patchFormData(
      {required String url, RequestHeader? header, Map<String, dynamic>? body}) async {
    return await _dio!.patch(
      url,
      options: Options(headers: header?.headers),
      data: body,
    );
  }


    Future<Response> putFormData(
      {required String url, RequestHeader? header, Map<String, dynamic>? body}) async {
    return await _dio!.put(
      url,
      options: Options(headers: header?.headers),
      data: body,
    );
  }

  Future<Response> delete(
      {required String url,
      RequestHeader? header,
      Map<String, dynamic>? body}) async {
    return await _dio!
        .delete(url, options: Options(headers: header?.headers), data: body);
  }
}


