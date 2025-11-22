import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class LoadingDialog extends StatelessWidget {
  final String? text;

  const LoadingDialog({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Center(
        child: CircularProgressIndicator(
          color: MyTheme.color.primary,
          backgroundColor: Colors.transparent,
        ),
      ),
      content: Text(
        text!,
        textAlign: TextAlign.center,
        style: MyTheme.style.subtitle.copyWith(
          fontSize: AppSetting.setFontSize(44),
        ),
      ),
    );
  }
}