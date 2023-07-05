import 'package:flutter/material.dart';
import 'package:weather_app/feature/theme/color/gradient_manager.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';
import 'package:weather_app/utils/utils/utils.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, this.gradient, this.child, this.onPressed});

  final Gradient? gradient;
  final Widget? child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
      Utils().screenUtil(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: 32.raduis,
        gradient: gradient ?? GradientManager().primaryGradient
      ),
      child: ElevatedButton(onPressed: onPressed, style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
        backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
        elevation: const MaterialStatePropertyAll(0),
      ), child: child,),
      
    );
  }
}