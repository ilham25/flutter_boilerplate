import 'package:flutter/material.dart';

class Clickable extends StatelessWidget {
  final Function onClick;
  final BorderRadius? borderRadius;
  final Widget child;

  const Clickable({
    super.key,
    required this.onClick,
    this.borderRadius,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onClick(),
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}