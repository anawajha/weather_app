import 'package:flutter/material.dart';
import 'package:weather_app/utils/utils/utils.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({required this.title,
      required this.body,
      required this.positiveButtonText,
      required this.positiveButtonOnPressed,
      this.negativeButtonText,
      this.negativeButtonOnPressed, super.key});

      final String title;
      final String body;
      final String positiveButtonText;
      final String? negativeButtonText;
      final void Function() positiveButtonOnPressed;
      final void Function()? negativeButtonOnPressed;

  @override
  Widget build(BuildContext context) {
        Utils().screenUtil(context);
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      actionsAlignment: MainAxisAlignment.start,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      content: Text(
        body,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.bodyLarge,
        maxLines: 5,
      ),
      actions: [
        TextButton(
            onPressed: positiveButtonOnPressed,
            child: Text(positiveButtonText)),
        Visibility(
            visible:
                negativeButtonOnPressed != null && negativeButtonText != null,
            child: TextButton(
                onPressed: negativeButtonOnPressed,
                style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onBackground),
                child: Text(negativeButtonText ?? ''))),
      ],
    );
  }
}