import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitLoader extends StatelessWidget {
  final double value;

  const UIKitLoader({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: MyTheme.color.palette.light.medium,
          strokeWidth: 5,
          strokeCap: .round,
          color: MyTheme.color.primary,
        ),
      ),
      child: SizedBox(
        height: 32,
        width: 32,
        child: Center(child: CircularProgressIndicator(value: value)),
      ),
    );
  }
}
