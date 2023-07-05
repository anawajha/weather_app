import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/feature/view/home/widgets/home_screen_content.dart';
import 'package:weather_app/feature/view/widgets/empty_message.dart';
import 'package:weather_app/feature/view/widgets/loading.dart';
import 'package:weather_app/feature/view_model/home_view_model.dart';
import 'package:weather_app/utils/utils/my_get_utils.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeViewModel>(
          initState: (_) => MyGetUtils().put(HomeViewModel()),
          builder: (logic) {
            if (logic.loading) {
              return const Loading();
            } else if (!logic.loading && logic.focast != null) {
              return const HomeScreenContent();
            }
            return const EmptyMessage(
                message: 'Check your internet connection and try again');
          }),
    );
  }
}
