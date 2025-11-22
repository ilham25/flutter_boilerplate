import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'loading_singlebox.dart';

class LoadingListView extends StatelessWidget {
  final int length;
  final double height;

  const LoadingListView({
    super.key,
    this.length = 5,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: const BouncingScrollPhysics(),
      itemCount: length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: LoadingSingleBox(
            height: height,
          ),
        );
      },
    );
  }
}

class LoadingListViewCustom extends StatelessWidget {
  final int length;
  final Widget? child;

  const LoadingListViewCustom({
    super.key,
    this.length = 10,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: length,
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: AppSetting.setHeight(20),
          ),
          child: child,
        );
      },
    );
  }
}