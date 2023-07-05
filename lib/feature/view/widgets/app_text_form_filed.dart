import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/utils/extensions/color_extension.dart';
import 'package:weather_app/utils/utils/utils.dart';

class AppTextFormFiled extends StatelessWidget {
  const AppTextFormFiled({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.maxLines = 1,
    this.validator,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.inputType,
    this.prefixIcon,
    this.maxLength,
    this.digitsOnly = false,
    this.autoValidate = false,
    this.hint,
     this.inputAction,
      this.onFieldSubmitted, this.iconColor, this.fillColor, this.raduis, this.textStyle
  }) : super(key: key);

  final TextEditingController controller;
  final bool obscureText;
  final int maxLines;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final void Function()? onTap;
  final TextInputType? inputType;
  final int? maxLength;
  final bool digitsOnly;
  final String? hint;
  final bool autoValidate;
  final TextInputAction? inputAction;
  final void Function(String)? onFieldSubmitted;
  final Color? iconColor;
  final Color? fillColor;
  final double? raduis;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return TextFormField(
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      readOnly: readOnly,
      onTap: onTap,
      controller: controller,
      maxLines: maxLines,
      inputFormatters: <TextInputFormatter>[
        if (inputType == TextInputType.number && digitsOnly) ...[
          FilteringTextInputFormatter.digitsOnly
        ],
      ],
      obscureText: obscureText,
      keyboardType: inputType,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hint,
        counterStyle:
            TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color),
        filled: true,
        fillColor: fillColor ?? Theme.of(context).colorScheme.outlineVariant,
        hintStyle: textStyle ?? Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).textTheme.labelLarge?.color!.alphaPercent(0.25)),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor ?? Theme.of(context).textTheme.labelLarge?.color!.alphaPercent(0.25),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r), borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r),),
                focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
        focusedBorder: !readOnly ? OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r),
            borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 1.5)) : OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r), borderSide: BorderSide(color: Theme.of(context).colorScheme.outlineVariant)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular((raduis ?? 32).r)),
                   isDense: true,
      ),
      style: textStyle ?? Theme.of(context).textTheme.labelLarge,
      validator: validator,
      textInputAction: inputAction,
      onFieldSubmitted: onFieldSubmitted,
      autovalidateMode: autoValidate ? AutovalidateMode.onUserInteraction : null,
    );
  }
}