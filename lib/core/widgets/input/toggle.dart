import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitToggle extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const UIKitToggle({super.key, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        switchTheme: SwitchThemeData(
          trackColor: .resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return MyTheme.color.primary;
            }
            return MyTheme.color.palette.light.dark;
          }),
          trackOutlineColor: .resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return MyTheme.color.primary;
            }
            return MyTheme.color.palette.light.dark;
          }),
          thumbColor: .all(MyTheme.color.palette.light.lightest),
          thumbIcon: .all(Icon(null, size: 0)),
        ),
      ),
      child: SizedBox(
        height: AppSetting.setHeight(28),
        width: AppSetting.setWidth(45),
        child: FittedBox(
          fit: .cover,
          child: Switch(value: value, onChanged: onChanged),
        ),
      ),
    );
  }
}
