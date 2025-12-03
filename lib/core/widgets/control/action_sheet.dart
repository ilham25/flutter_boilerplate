import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/injection/injector.dart';
import 'package:flutter_boilerplate/routing/route.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitActionSheet {
  static final AppRouter _router = inject<AppRouter>();

  static Future<T?> show<T>({
    required List<UIKitItem<T>> items,
    String? emptyText,
  }) {
    return showModalBottomSheet<T>(
      context: _router.navigatorKey.currentContext!,
      isScrollControlled: true,
      builder: (context) {
        return _UIKitActionSheet<T>(items: items, emptyText: emptyText);
      },
    );
  }
}

class _UIKitActionSheet<T> extends StatelessWidget {
  final List<UIKitItem<T>> items;
  final String? emptyText;

  const _UIKitActionSheet({super.key, required this.items, this.emptyText});

  List<Widget> _buildList(BuildContext context) {
    return items.map((item) {
      return ListTile(
        leading: item.icon?.image(
          height: AppSetting.setHeight(20),
          width: AppSetting.setHeight(20),
          color: MyTheme.color.palette.light.darkest,
        ),
        title: Text(
          item.title,
          style: MyTheme.style.action.m.copyWith(
            color: MyTheme.color.palette.dark.light,
          ),
        ),
        contentPadding: .symmetric(horizontal: AppSetting.setWidth(24)),
        horizontalTitleGap: AppSetting.setWidth(12),
        onTap: () {
          context.router.maybePop(item.value);
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return UIKitBottomSheet(
      child: items.isEmpty
          ? Column(
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
            )
          : ListView(
              padding: .symmetric(vertical: AppSetting.setHeight(12)),
              shrinkWrap: true,
              children: _buildList(context),
            ),
    );
  }
}

class UIKitItem<T> {
  final T value;
  final String title;
  final AssetGenImage? icon;

  const UIKitItem({required this.value, required this.title, this.icon});
}
