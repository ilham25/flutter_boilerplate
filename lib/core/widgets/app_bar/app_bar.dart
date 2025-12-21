import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String title;
  final Function()? onLeadingTap;
  final bool automaticallyImplyLeading;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;

  final Color? backgroundColor;

  const UIKitAppBar({
    super.key,
    this.leading,
    this.title = '',
    this.onLeadingTap,
    this.automaticallyImplyLeading = true,
    this.actions = const [],
    this.bottom,
    this.backgroundColor,
  });

  double get height => 56;

  Color get _backgroundColor => backgroundColor ?? MyTheme.color.white;

  Widget? _buildLeading(BuildContext context) {
    if (automaticallyImplyLeading && leading == null) {
      final isCanPop = context.router.canPop();
      if (!isCanPop) return Space.w(MyTheme.defaultPadding);

      return UIKitIconButton.secondary(
        Assets.icons.arrowLeft,
        onTap:
            onLeadingTap ??
            () {
              context.router.maybePop();
            },
      );
    }

    return leading;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: _backgroundColor),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: AppSetting.setHeight(height),
              padding: EdgeInsets.only(
                left: AppSetting.setWidth(14),
                right: AppSetting.setWidth(14),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  if (title.isNotEmpty)
                    Positioned.fill(
                      child: Center(
                        child: Text(
                          title,
                          style: MyTheme.style.heading.h4,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  Positioned(
                    left: 0,
                    child: _buildLeading(context) ?? const SizedBox.shrink(),
                  ),
                  if (actions.isNotEmpty) ...[
                    Positioned(
                      right: 0,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: AppSetting.setWidth(0),
                        children: actions,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (bottom != null) bottom!,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => _PreferredAppBarSize(
    AppSetting.setHeight(height),
    bottom?.preferredSize.height,
  );
}

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
    : super.fromHeight((toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? toolbarHeight;
  final double? bottomHeight;
}
