import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:pinput/pinput.dart';

class UIKitCodeInput extends StatelessWidget {
  final TextEditingController? controller;
  final int length;

  const UIKitCodeInput({super.key, this.controller, this.length = 4});

  PinTheme get defaultPinTheme => PinTheme(
    height: AppSetting.setHeight(48),
    width: AppSetting.setHeight(48),
    decoration: BoxDecoration(
      borderRadius: .circular(12),
      border: Border.all(color: MyTheme.color.palette.light.darkest, width: 1),
    ),
    textStyle: MyTheme.style.body.m,
  );

  PinTheme get focusedPinTheme => defaultPinTheme.copyDecorationWith(
    border: Border.all(color: MyTheme.color.primary, width: 1.5),
  );

  TextEditingController get _controller =>
      controller ?? TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: _controller,
      length: length,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
    );
  }
}
