import 'package:get/get.dart';

class MyGetUtils {
  static final MyGetUtils _instance = MyGetUtils._internal();

  factory MyGetUtils() => _instance;

  MyGetUtils._internal();

  T find<T extends GetxController>(T controller, {bool permanent = false}) {
    if (!Get.isRegistered<T>()) {
      Get.put<T>(controller);
    }
    return Get.find<T>();
  }

  void put<T extends GetxController>(T controller, {bool permanent = false}) {
    if (!Get.isRegistered<T>()) {
      Get.put<T>(controller, permanent: permanent);
    }
    // return Get.find<T>();
  }

  T putWith<T extends GetxController>(T controller, {bool permanent = false}) {
    if (!Get.isRegistered<T>()) {
     return Get.put<T>(controller, permanent: permanent);
    }
    return Get.find<T>();
  }
}
