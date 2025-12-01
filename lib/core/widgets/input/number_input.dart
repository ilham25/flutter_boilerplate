import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

class _UIKitNumberInput extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;
  final bool enabled;

  final int min;
  final int? max;

  final NumberInputVariant variant;

  final String title;
  final String errorText;

  const _UIKitNumberInput({
    super.key,
    required this.value,
    required this.onChanged,
    this.enabled = true,
    this.min = 0,
    this.max,
    this.variant = NumberInputVariant.input,
    this.title = '',
    this.errorText = '',
  });

  bool get isError => errorText.isNotEmpty;

  Widget _buildCounter(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        _InputButton(
          icon: Assets.icons.minus,
          enabled: enabled && value > min,
          onTap: () => onChanged(value - 1),
        ),
        Space.w(10),
        Text(
          value.toString(),
          style: MyTheme.style.body.m.copyWith(
            color: isError
                ? MyTheme.color.danger
                : !enabled
                ? MyTheme.color.palette.dark.light
                : null,
          ),
        ),
        Space.w(10),
        _InputButton(
          icon: Assets.icons.add,
          enabled: enabled && (max == null || value < max!),
          onTap: () => onChanged(value + 1),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case .counter:
        return _buildCounter(context);
      case .input:
        return Row(
          crossAxisAlignment: .center,
          children: [
            Flexible(
              flex: 1,
              fit: .tight,
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  Text(
                    title,
                    style: MyTheme.style.heading.h5.copyWith(
                      color: enabled
                          ? null
                          : MyTheme.color.palette.dark.lightest,
                    ),
                  ),
                  if (isError) ...[
                    Space.h(4),
                    Text(
                      errorText,
                      style: MyTheme.style.body.xs.copyWith(
                        color: MyTheme.color.danger,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Space.w(6),
            _buildCounter(context),
          ],
        );
    }
  }
}

class UIKitNumberInput extends _UIKitNumberInput {
  const UIKitNumberInput({
    super.key,
    required super.value,
    required super.onChanged,
    super.enabled = true,
    super.min = 0,
    super.max,
    super.variant = NumberInputVariant.input,
    super.title = '',
    super.errorText = '',
  });

  factory UIKitNumberInput.counter({
    required int value,
    required ValueChanged<int> onChanged,
    bool enabled = true,
    int min = 0,
    int? max,
    String errorText = '',
  }) => UIKitNumberInput(
    value: value,
    onChanged: onChanged,
    enabled: enabled,
    min: min,
    max: max,
    variant: .counter,
    errorText: errorText,
  );
}

enum NumberInputVariant { input, counter }

class _InputButton extends StatelessWidget {
  final AssetGenImage icon;
  final VoidCallback? onTap;

  final bool enabled;

  const _InputButton({required this.icon, this.onTap, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: .transparency,
      child: Ink(
        height: AppSetting.setHeight(24),
        width: AppSetting.setHeight(24),
        decoration: BoxDecoration(
          borderRadius: .circular(26),
          color: enabled
              ? MyTheme.color.palette.highlight.lightest
              : MyTheme.color.palette.light.light,
        ),
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: .circular(26),
          child: Center(
            child: icon.image(
              height: AppSetting.setHeight(10),
              width: AppSetting.setWidth(10),
              color: enabled
                  ? MyTheme.color.primary
                  : MyTheme.color.palette.light.darkest,
            ),
          ),
        ),
      ),
    );
  }
}
