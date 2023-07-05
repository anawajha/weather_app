import 'package:flutter/material.dart';
import 'package:weather_app/utils/utils/utils.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return const Center(child: CircularProgressIndicator.adaptive(),);
  }
}