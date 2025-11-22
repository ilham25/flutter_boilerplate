import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/components/dialog/info_choose_dialog.dart';
import 'package:flutter_boilerplate/core/components/dialog/info_dialog.dart';
import 'package:flutter_boilerplate/core/components/dialog/input_dialog.dart';
import 'package:flutter_boilerplate/core/components/dialog/loading_dialog.dart';
import 'package:flutter_boilerplate/injection/injector.dart';
import 'package:flutter_boilerplate/routing/route.dart';

class DialogShow {
  static void showInfo(
    String message,
    String buttonText, {
    Function? onClick,
    Widget? contentTextWidget,
    bool dismiss = false,
    bool disableButton = false,
    double paddingWidth = 70,
  }) {
    showModal(
      context: inject<AppRouter>().navigatorKey.currentContext!,
      configuration: FadeScaleTransitionConfiguration(
        barrierDismissible: dismiss,
      ),
      builder: (context) {
        return PopScope(
          canPop: dismiss,
          child: InfoDialog(
            text: message,
            onClickOK: () => onClick != null ? onClick() : context.router.maybePop(),
            clickText: buttonText,
            contentTextWidget: contentTextWidget,
            disableButton: disableButton,
            paddingWidth: paddingWidth,
          ),
        );
      },
    );
  }

  static void showInputDialog(
    String title,
    String buttonText,
    TextInputType type, {
    Function(String)? onClick,
    String? hintText,
    String? defaultValue,
    String? infoText,
    bool secureText = false
  }) {
    var inputController = TextEditingController();
    if (defaultValue != null) {
      inputController.text = defaultValue;
    } else {
      inputController.text = "";
    }
    showModal(
      context: inject<AppRouter>().navigatorKey.currentContext!,
      configuration: const FadeScaleTransitionConfiguration(
        barrierDismissible: true,
      ),
      builder: (context) {
        return InputDialog(
          onClickOK: (value) =>
              onClick != null ? onClick(value) : context.router.maybePop(),
          clickText: buttonText,
          title: title,
          action: TextInputAction.done,
          type: type,
          controller: inputController,
          hintText: hintText,
          infoText: infoText,
          secureText: secureText,
        );
      },
    );
  }

  static void showChoose({
    required String title,
    required String description,
    required String positiveText,
    required String negativeText,
    required Color positiveButtonColor,
    required Color positiveTextColor,
    required Color negativeButtonColor,
    required Color negativeTextColor,
    required Function onClickPositive,
    required Function onClickNegative,
    double paddingWidth = 70,
  }) {
    showModal(
        context: inject<AppRouter>().navigatorKey.currentContext!,
        configuration: const FadeScaleTransitionConfiguration(barrierDismissible: false),
        builder: (context) {
          return InfoChooseDialog(
            title: title,
            description: description,
            onClickPositive: onClickPositive,
            onClickNegative: onClickNegative,
            positiveText: positiveText,
            negativeText: negativeText,
            positiveButtonColor: positiveButtonColor,
            positiveTextColor: positiveTextColor,
            negativeButtonColor: negativeButtonColor,
            negativeTextColor: negativeTextColor,
            paddingWidth: paddingWidth,
          );
        }
    );
  }

  static void showLoading(String message) {
    showModal(
      context: inject<AppRouter>().navigatorKey.currentContext!,
      configuration: const FadeScaleTransitionConfiguration(
        barrierDismissible: false,
      ),
      builder: (context) {
        return LoadingDialog(
          text: message,
        );
      },
    );
  }
}