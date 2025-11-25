import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';

class IdleLoadingCenter extends StatelessWidget {
  const IdleLoadingCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSetting.deviceWidth,
      height: AppSetting.deviceHeight,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class IdleLoading extends StatelessWidget {
  final Color? color;
  const IdleLoading({
    super.key,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: color),
    );
  }
}
