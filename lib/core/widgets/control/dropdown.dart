import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitDropdown<T> extends StatelessWidget {
  final T? value;
  final ValueChanged<T>? onChanged;
  final String hintText;
  final String errorText;
  final String Function(T value) itemLabel;
  final List<T> items;
  final List<Widget>? dropdownItems;
  final AssetGenImage? leadingIcon;
  final Color? leadingIconColor;
  final bool enabled;
  final VoidCallback? onClear;
  final String? emptyText;
  final String description;
  final bool readOnly;

  final Color? color;

  const UIKitDropdown({
    super.key,
    this.value,
    this.hintText = "",
    this.errorText = "",
    this.leadingIcon,
    required this.onChanged,
    required this.itemLabel,
    required this.items,
    this.dropdownItems,
    this.enabled = true,
    this.onClear,
    this.emptyText,
    this.description = "",
    this.readOnly = false,
    this.color,
    this.leadingIconColor,
  });

  String getDisplayLabel() {
    if (value == null) {
      return "";
    }

    if (value is! Object) {
      return "$value";
    }

    return itemLabel(value!);
  }

  bool get isDisabled => !enabled;

  double get radius => 12;

  double get height => 48;

  Color get _leadingIconColor =>
      leadingIconColor ?? MyTheme.color.palette.dark.lightest;

  @override
  Widget build(BuildContext context) {
    bool hasError = errorText.isNotEmpty;
    final String label = getDisplayLabel();
    final bool isDisableSplash = isDisabled || readOnly;

    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Ink(
            decoration: BoxDecoration(
              color: isDisabled ? MyTheme.color.disabled : MyTheme.color.white,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: InkWell(
              splashColor: isDisableSplash ? Colors.transparent : null,
              highlightColor: isDisableSplash ? Colors.transparent : null,
              onTap: () async {
                if (isDisabled || readOnly) return;

                final result = await showModalBottomSheet<T>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return _DropdownSheet<T>(
                      title: hintText,
                      items: items,
                      itemLabel: itemLabel,
                      onClear: onClear,
                      emptyText: emptyText,
                      value: value,
                    );
                  },
                );

                if (result == null) return;

                if (onChanged != null) onChanged!(result);
              },
              borderRadius: BorderRadius.circular(radius),
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(
                    width: 1,
                    color: !hasError
                        ? MyTheme.color.palette.light.darkest
                        : MyTheme.color.danger,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(16) - 1,
                ),
                child: Row(
                  crossAxisAlignment: .center,
                  children: [
                    if (leadingIcon != null)
                      Padding(
                        padding: EdgeInsets.only(right: AppSetting.setWidth(8)),
                        child: leadingIcon?.image(
                          height: AppSetting.setHeight(16),
                          width: AppSetting.setWidth(16),
                          color: _leadingIconColor,
                        ),
                      ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(
                        label.isNotEmpty ? label : hintText,
                        style: MyTheme.style.body.m.copyWith(
                          color: label.isNotEmpty
                              ? MyTheme.color.palette.dark.darkest
                              : MyTheme.color.palette.dark.lightest,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (onClear != null && value != null) ...[
                      Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: MyTheme.color.palette.dark.lightest,
                        ),
                        child: InkWell(
                          onTap: onClear,
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSetting.setWidth(4),
                              vertical: AppSetting.setHeight(4),
                            ),
                            child: Assets.icons.close.image(
                              height: AppSetting.setHeight(8),
                              width: AppSetting.setWidth(8),
                              color: MyTheme.color.palette.dark.lightest,
                            ),
                          ),
                        ),
                      ),
                      Space.w(8),
                    ],
                    if (!isDisabled)
                      Assets.icons.arrowDown.image(
                        height: AppSetting.setHeight(12),
                        width: AppSetting.setWidth(12),
                        color: MyTheme.color.palette.dark.lightest,
                      ),
                  ],
                ),
              ),
            ),
          ),
          if (hasError)
            Container(
              margin: EdgeInsets.only(top: AppSetting.setHeight(8)),
              padding: EdgeInsets.only(left: AppSetting.setWidth(10)),
              child: Text(
                errorText,
                style: MyTheme.style.body.xs.copyWith(
                  color: MyTheme.color.danger,
                ),
              ),
            ),
          // if (description.isNotEmpty)
          //   Container(
          //     margin: EdgeInsets.only(top: AppSetting.setHeight(8)),
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Container(
          //           margin: EdgeInsets.only(top: AppSetting.setHeight(2)),
          //           child: Assets.icons.iconInfo.image(
          //             height: AppSetting.setHeight(12),
          //             width: AppSetting.setWidth(12),
          //             color: MyTheme.color.palette.neutral.c500,
          //           ),
          //         ),
          //         Space.w(4),
          //         Flexible(
          //           flex: 1,
          //           fit: FlexFit.loose,
          //           child: Text(
          //             description,
          //             style: MyTheme.style.sm.regular.copyWith(
          //               color: MyTheme.color.palette.neutral.c500,
          //             ),
          //             maxLines: 3,
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
        ],
      ),
    );
  }
}

class _DropdownSheet<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final String Function(T) itemLabel;
  final VoidCallback? onClear;
  final String? emptyText;
  final T? value;

  const _DropdownSheet({
    super.key,
    required this.title,
    required this.items,
    required this.itemLabel,
    this.onClear,
    this.emptyText,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return UIKitBottomSheet(
      child:
          (items.isEmpty
              ? Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.list_alt,
                        size: AppSetting.setWidth(80),
                        color: MyTheme.color.palette.light.darkest,
                      ),
                      Space.h(16),
                      Text(
                        emptyText ?? 'No Data',
                        style: MyTheme.style.heading.h4.copyWith(
                          color: MyTheme.color.palette.dark.darkest,
                        ),
                      ),
                      Text(
                        "No data found.",
                        style: MyTheme.style.body.s.copyWith(
                          color: MyTheme.color.palette.light.darkest,
                        ),
                        textAlign: .center,
                      ),
                      Space.h(32),
                    ],
                  ),
                )
              : null) ??
          ListView.separated(
            padding: EdgeInsets.symmetric(
              horizontal: AppSetting.setWidth(12),
              vertical: AppSetting.setHeight(12),
            ),
            shrinkWrap: true,
            // children: _buildList(context),
            itemCount: items.length,
            separatorBuilder: (context, index) => Space.h(8),
            itemBuilder: (context, index) {
              final item = items.elementAt(index);
              final bool isSelected = item == value;

              return ListTile(
                shape: RoundedRectangleBorder(borderRadius: .circular(12)),
                title: Text(
                  itemLabel(item),
                  style: MyTheme.style.body.m.copyWith(
                    color: isSelected
                        ? MyTheme.color.palette.dark.darkest
                        : MyTheme.color.palette.dark.light,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(12),
                  vertical: AppSetting.setHeight(16),
                ),
                visualDensity: .compact,
                minTileHeight: 0,
                minVerticalPadding: 0,
                dense: true,
                onTap: () {
                  context.router.maybePop(item);
                },
                tileColor: isSelected
                    ? MyTheme.color.palette.light.light
                    : null,
              );
            },
          ),
    );
  }
}
