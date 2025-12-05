import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitDivider extends StatelessWidget {
  const UIKitDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: MyTheme.color.palette.light.dark, width: 0.5),
      ),
    );
  }
}
