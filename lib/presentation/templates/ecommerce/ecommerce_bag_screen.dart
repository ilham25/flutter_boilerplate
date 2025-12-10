import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';

@RoutePage()
class EcommerceBagScreen extends StatelessWidget {
  const EcommerceBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EcommerceBagBody();
  }
}

class EcommerceBagBody extends StatelessWidget {
  const EcommerceBagBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: UIKitAppBar(title: "Your bag"));
  }
}
