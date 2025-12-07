import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class UIKitProgressBar extends StatelessWidget {
  final double value;
  final UIKitProgressBarVariant variant;

  final int steps;

  const UIKitProgressBar({
    super.key,
    required this.value,
    this.variant = UIKitProgressBarVariant.base,
    this.steps = 1,
  });

  factory UIKitProgressBar.stepped({
    required double value,
    required int steps,
  }) => UIKitProgressBar(value: value, variant: .stepped, steps: steps);

  Widget _build() {
    if (variant == .base) {
      return LinearProgressIndicator(value: value);
    }

    return _SteppedProgressBar(value: value, steps: steps);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: MyTheme.color.primary,
          linearTrackColor: MyTheme.color.palette.light.medium,
          borderRadius: BorderRadius.circular(4),
          linearMinHeight: AppSetting.setHeight(8),
        ),
      ),
      child: _build(),
    );
  }
}

class _SteppedProgressBar extends StatelessWidget {
  final int steps;
  final double value;

  const _SteppedProgressBar({required this.steps, required this.value});

  List<double> get _values {
    final List<double> values = [];
    final double baseStepValue = 1 / steps;

    for (var i = 0; i < steps; i++) {
      double max = baseStepValue * (i + 1);
      double min = max - baseStepValue;
      double result = 0;

      if (value < max && value > min) {
        result = (value - min) / (max - min);
      } else if (value >= max) {
        result = 1;
      }

      values.add(result);
    }
    return values;
  }

  @override
  Widget build(BuildContext context) {
    final children = List.generate(_values.length, (index) {
      final isLast = index == steps - 1;
      final stepValue = _values.elementAt(index);
      return [
        Flexible(
          flex: 1,
          fit: .tight,
          child: LinearProgressIndicator(value: stepValue),
        ),
        if (!isLast) Space.w(6),
      ];
    });
    return Row(children: children.expand((e) => e).toList());
  }
}

enum UIKitProgressBarVariant { base, stepped }
