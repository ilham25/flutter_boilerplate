import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';

class UIKitBottomSheet extends StatelessWidget {
  final Widget child;

  const UIKitBottomSheet({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          mainAxisSize: .min,
          children: [
            Container(
              constraints: BoxConstraints(
                maxHeight: AppSetting.deviceHeight * 0.5,
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
