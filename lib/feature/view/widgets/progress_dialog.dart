import 'package:flutter/material.dart';
import 'package:weather_app/utils/utils/utils.dart';


class ProgressDialog extends StatelessWidget {
  const ProgressDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,       
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height:15),
            Text('Laoding...', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}