import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class _UIKitSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final SliderVariant variant;
  final String title;

  const _UIKitSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.variant = SliderVariant.base,
    this.title = '',
  });

  String get _value {
    final percent = (value * 100).toInt();
    return '$percent%';
  }

  Widget _buildSlider(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        sliderTheme: SliderThemeData(
          inactiveTrackColor: MyTheme.color.palette.light.medium,
          trackHeight: AppSetting.setHeight(8),
          thumbShape: _BorderedThumbShape(
            borderColor: MyTheme.color.white,
            fillColor: MyTheme.color.primary,
            borderWidth: AppSetting.setWidth(5),
            shadowColor: Colors.black.withAlpha(80),
            blur: 6,
            spread: 0,
            offset: const Offset(-1, 2),
          ),
          activeTickMarkColor: MyTheme.color.primary,
          activeTrackColor: MyTheme.color.primary,
          secondaryActiveTrackColor: Colors.red,
        ),
      ),
      child: Slider(value: value, onChanged: onChanged, padding: .zero),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case .base:
        return _buildSlider(context);
      case .showValue:
        return Row(
          crossAxisAlignment: .center,
          children: [
            Flexible(fit: .tight, flex: 1, child: _buildSlider(context)),
            Space.w(14),
            Container(
              decoration: BoxDecoration(
                color: MyTheme.color.palette.light.light,
                borderRadius: .circular(12),
              ),
              padding: .symmetric(
                horizontal: AppSetting.setWidth(12),
                vertical: AppSetting.setHeight(12),
              ),
              child: Center(child: Text(_value, style: MyTheme.style.body.s)),
            ),
          ],
        );
      case .showTitleValue:
        return Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: .tight,
                  child: Text(
                    title,
                    style: MyTheme.style.heading.h5,
                    maxLines: 1,
                    overflow: .ellipsis,
                  ),
                ),
                Space.w(8),
                Text(_value, style: MyTheme.style.body.s),
              ],
            ),
            Space.h(10),
            _buildSlider(context),
          ],
        );
    }
  }
}

class UIKitSlider extends _UIKitSlider {
  const UIKitSlider({
    super.key,
    required super.value,
    required super.onChanged,
    super.variant = SliderVariant.base,
    super.title = '',
  });

  factory UIKitSlider.withValue({
    required double value,
    required ValueChanged<double> onChanged,
  }) => UIKitSlider(value: value, onChanged: onChanged, variant: .showValue);

  factory UIKitSlider.withTitle({
    required double value,
    required ValueChanged<double> onChanged,
    required String title,
  }) => UIKitSlider(
    value: value,
    onChanged: onChanged,
    variant: .showTitleValue,
    title: title,
  );
}

enum SliderVariant { base, showValue, showTitleValue }

class _BorderedThumbShape extends SliderComponentShape {
  final double radius;

  // Shadow params
  final double blur; // blur radius
  final double spread; // like CSS spread
  final Offset offset; // x,y offset
  final Color shadowColor;

  // Thumb colors
  final double borderWidth;
  final Color borderColor;
  final Color fillColor;

  const _BorderedThumbShape({
    this.radius = 10,
    this.blur = 8,
    this.spread = 0,
    this.offset = const Offset(0, 0),
    this.shadowColor = const Color(0x55000000),
    this.borderWidth = 2,
    this.borderColor = Colors.black,
    this.fillColor = Colors.white,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(radius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    // --- Shadow ---
    final shadowPaint = Paint()
      ..color = shadowColor
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blur)
      ..style = PaintingStyle.fill;

    // Spread = tambah radius
    final shadowRadius = radius + spread;

    canvas.drawCircle(
      center + offset, // offset shadow
      shadowRadius,
      shadowPaint,
    );

    // --- Fill ---
    final fillPaint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    // --- Border ---
    final borderPaint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, fillPaint);
    canvas.drawCircle(center, radius, borderPaint);
  }
}
