import 'package:flutter/material.dart';
import 'package:weather_app/feature/view/widgets/app_text_form_filed.dart';
import 'package:weather_app/utils/extensions/num_extension.dart';
import 'package:weather_app/utils/utils/utils.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField(
      {required this.controller,
      required this.label,
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
      this.onFieldSubmitted,
      super.key, this.iconColor});

  final String label;
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

  @override
  Widget build(BuildContext context) {
        Utils().screenUtil(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        12.spaceY,
        AppTextFormFiled(
          controller: controller,
          hint: hint,
          autoValidate: autoValidate,
          digitsOnly: digitsOnly,
          inputAction: inputAction,
          inputType: inputType,
          maxLength: maxLength,
          maxLines: maxLines,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
          prefixIcon: prefixIcon,
          readOnly: readOnly,
          suffixIcon: suffixIcon,
          validator: validator,
          iconColor: iconColor,
        )
      ],
    );
  }
}
