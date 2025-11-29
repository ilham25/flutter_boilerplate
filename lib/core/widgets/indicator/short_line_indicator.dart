import 'package:flutter/material.dart';

class ShortLineIndicator extends Decoration {
  final double width;
  final double thickness;
  final Color color;
  final double radius;

  const ShortLineIndicator({
    required this.width,
    required this.thickness,
    required this.color,
    this.radius = 4,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _ShortLinePainter(width, thickness, color, radius);
  }
}

class _ShortLinePainter extends BoxPainter {
  final double width;
  final double thickness;
  final Color color;
  final double radius;

  _ShortLinePainter(this.width, this.thickness, this.color, this.radius);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    final Paint paint = Paint()..color = color;

    final double dx = offset.dx + (config.size!.width - width) / 2;
    final double dy = offset.dy + config.size!.height - thickness;

    final Rect rect = Rect.fromLTWH(dx, dy, width, thickness);
    final RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));

    canvas.drawRRect(rRect, paint);
  }
}
