import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/my_material_app.dart';
import 'package:weather_app/network/request/request_manager.dart';
import 'package:weather_app/utils/utils/utils.dart';

Future<void> main() async { 
    WidgetsFlutterBinding.ensureInitialized();
    RequestManager().init();
    Utils().changeDeviceOrientation(orientation: DeviceOrientation.portraitUp);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return const MyMaterialApp();
  }
}