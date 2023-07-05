import 'dart:io';
import 'package:dio/dio.dart';

class RequestUtils {
  RequestUtils._();
  static final RequestUtils _instcane = RequestUtils._();

  factory RequestUtils() => _instcane;

  Future<MultipartFile> getFileAsMultipart(File file) async =>
      await MultipartFile.fromFile(file.path,
          filename: file.path.split('/').last);
}
