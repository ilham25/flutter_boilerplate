import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UIKitToast {
  static final UIKitToast _instance = UIKitToast._internal();
  factory UIKitToast() => _instance;
  UIKitToast._internal();

  static late FToast fToast;

  static void init(BuildContext context) {
    fToast = FToast();
    fToast.init(context);
  }

  static void info({
    required String title,
    required String description,
    Duration? duration,
  }) {
    Widget toast = _build(
      icon: Assets.icons.info,
      title: title,
      description: description,
      backgroundColor: MyTheme.color.palette.highlight.lightest,
      onClose: () {
        fToast.removeCustomToast();
      },
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: duration ?? Duration(seconds: 2),
    );
  }

  static void success({
    required String title,
    required String description,
    Duration? duration,
  }) {
    Widget toast = _build(
      icon: Assets.icons.success,
      title: title,
      description: description,
      backgroundColor: MyTheme.color.palette.success.light,
      onClose: () {
        fToast.removeCustomToast();
      },
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: duration ?? Duration(seconds: 2),
    );
  }

  static void warning({
    required String title,
    required String description,
    Duration? duration,
  }) {
    Widget toast = _build(
      icon: Assets.icons.warning,
      title: title,
      description: description,
      backgroundColor: MyTheme.color.palette.warning.light,
      onClose: () {
        fToast.removeCustomToast();
      },
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: duration ?? Duration(seconds: 2),
    );
  }

  static void danger({
    required String title,
    required String description,
    Duration? duration,
  }) {
    Widget toast = _build(
      icon: Assets.icons.danger,
      title: title,
      description: description,
      backgroundColor: MyTheme.color.palette.error.light,
      onClose: () {
        fToast.removeCustomToast();
      },
    );

    fToast.showToast(
      child: toast,
      gravity: .BOTTOM,
      toastDuration: duration ?? Duration(seconds: 2),
    );
  }

  static Widget _build({
    required AssetGenImage icon,
    required String title,
    required String description,
    required Color backgroundColor,
    VoidCallback? onClose,
  }) {
    return Container(
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: .circular(16),
      ),
      padding: .symmetric(
        horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
        vertical: AppSetting.setHeight(MyTheme.defaultPadding),
      ),
      child: Row(
        children: [
          icon.image(
            height: AppSetting.setHeight(24),
            width: AppSetting.setWidth(24),
          ),
          Space.w(16),
          Flexible(
            flex: 1,
            fit: .tight,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  style: MyTheme.style.heading.h5,
                  maxLines: 1,
                  overflow: .ellipsis,
                ),
                Space.h(4),
                Text(
                  description,
                  style: MyTheme.style.body.s.copyWith(
                    color: MyTheme.color.palette.dark.medium,
                  ),
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
              ],
            ),
          ),
          if (onClose != null) ...[
            Space.w(16),
            UIKitIconButton(
              Assets.icons.close,
              onTap: onClose,
              size: 12,
              iconSize: 12,
              decoration: UIKitIconButtonDecoration(
                iconColor: MyTheme.color.palette.dark.light,
                color: Colors.transparent,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
