import 'package:flutter/material.dart';

import '../../../config/app_config.dart';
import '../../../theme/theme.dart';

class InfoDialog extends StatelessWidget {
  final String? text;
  final String? clickText;
  final String? cancelText;
  final Function? onClickOK;
  final Function? onClickCancel;
  final Widget? contentTextWidget;
  final double? height;
  final Color? backgroundButtonColor;
  final Color? textColor;
  final bool disableButton;
  final double paddingWidth;

  const InfoDialog({
    super.key,
    required this.text,
    required this.onClickOK,
    this.onClickCancel,
    this.clickText = "OK",
    this.contentTextWidget,
    this.cancelText = "Batal",
    this.height = 100,
    this.backgroundButtonColor,
    this.textColor,
    this.disableButton = false,
    this.paddingWidth = 70
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: EdgeInsets.symmetric(
        horizontal: AppSetting.setWidth(paddingWidth),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          contentTextWidget == null
              ? Text(
                  text ?? "",
                  textAlign: TextAlign.center,
                  style: MyTheme.style.title
                      .copyWith(
                        fontSize: AppSetting.setFontSize(45),
                      )
                      .apply(fontWeightDelta: -1),
                )
              : contentTextWidget!,
          SizedBox(
            height: AppSetting.setHeight(height ?? 70),
          ),
         !disableButton
          ? Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Row(
                   children: <Widget>[
                     onClickCancel != null
                         ? Expanded(
                       child: SizedBox(
                         width: AppSetting.deviceWidth,
                         child: OutlinedButton(
                           onPressed: () => onClickCancel!(),
                           style: OutlinedButton.styleFrom(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(5),
                             ),
                             side: BorderSide(color: MyTheme.color.primary),
                           ),
                           child: Text(
                             cancelText ?? "",
                             maxLines: 1,
                             overflow: TextOverflow.ellipsis,
                             style: MyTheme.style.title
                                 .copyWith(
                               fontSize: AppSetting.setFontSize(40),
                               color: MyTheme.color.primary,
                             )
                                 .apply(
                               fontWeightDelta: -1,
                             ),
                           ),
                         ),
                       ),
                     )
                         : const SizedBox(),
                     onClickCancel != null
                         ? const SizedBox(width: 10)
                         : const SizedBox(),
                     Expanded(
                       child: SizedBox(
                         width: AppSetting.deviceWidth,
                         child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             backgroundColor: backgroundButtonColor ?? MyTheme.color.primary,
                             elevation: 0,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(5),
                             ),
                           ),
                           onPressed: () => onClickOK!(),
                           child: Text(
                             clickText ?? "OK",
                             maxLines: 1,
                             overflow: TextOverflow.ellipsis,
                             style: MyTheme.style.title.copyWith(
                               fontSize: AppSetting.setFontSize(40),
                               color: textColor ?? Colors.white,
                             ),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ],
             )
          : const SizedBox(),
        ],
      ),
    );
  }
}