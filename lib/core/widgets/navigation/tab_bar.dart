import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitTabBar extends StatefulWidget {
  final List<UIKitTabBarItem> items;
  final int currentIndex;
  final Function(int index) onTap;

  final Color? backgroundColor;
  final Color? selectedItemColor;

  const UIKitTabBar({
    super.key,
    required this.items,
    this.currentIndex = 0,
    required this.onTap,
    this.backgroundColor,
    this.selectedItemColor,
  });

  @override
  State<UIKitTabBar> createState() => _UIKitTabBarState();
}

class _UIKitTabBarState extends State<UIKitTabBar> {
  Color? get _backgroundColor => widget.backgroundColor;

  List<Widget> _createTiles() {
    final List<Widget> tiles = [];

    for (var i = 0; i < widget.items.length; i++) {
      final item = widget.items[i];

      tiles.add(
        Flexible(
          flex: 1,
          fit: .tight,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                fit: .tight,
                child: _TabTile(
                  onTap: () {
                    widget.onTap(i);
                  },
                  item: item,
                  selected: i == widget.currentIndex,
                  selectedItemColor: widget.selectedItemColor,
                ),
              ),
              if (i != widget.items.length - 1) Space.w(8),
            ],
          ),
        ),
      );
    }

    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _backgroundColor,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSetting.setWidth(16),
          vertical: AppSetting.setHeight(16),
        ),
        child: Row(children: _createTiles()),
      ),
    );
  }
}

class _TabTile extends StatelessWidget {
  final VoidCallback onTap;
  final UIKitTabBarItem item;

  final bool selected;

  final Color? selectedItemColor;

  const _TabTile({
    required this.onTap,
    required this.item,
    this.selected = false,
    this.selectedItemColor,
  });

  @override
  Widget build(BuildContext context) {
    Widget result = InkResponse(
      onTap: onTap,
      child: _TabBarItem(
        icon: item.icon,
        title: item.title,
        selected: selected,
        selectedItemColor: selectedItemColor,
      ),
    );

    return Semantics(container: true, button: true, child: result);
  }
}

class _TabBarItem extends StatelessWidget {
  final AssetGenImage icon;
  final String title;

  final bool selected;

  final Color? selectedItemColor;

  const _TabBarItem({
    required this.icon,
    required this.title,
    this.selected = false,
    this.selectedItemColor,
  });

  TextStyle get _textStyle =>
      selected ? MyTheme.style.action.s : MyTheme.style.body.xs;

  Color get _selectedColor => selectedItemColor ?? MyTheme.color.primary;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      mainAxisSize: .min,
      children: [
        icon.image(
          height: AppSetting.setHeight(20),
          width: AppSetting.setWidth(20),
          color: selected ? _selectedColor : MyTheme.color.palette.light.dark,
        ),
        Space.h(8),
        Text(
          title,
          style: _textStyle.copyWith(
            color: selected ? null : MyTheme.color.palette.dark.light,
          ),
        ),
      ],
    );
  }
}
