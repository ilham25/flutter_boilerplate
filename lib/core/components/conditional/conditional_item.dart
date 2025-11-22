import 'package:flutter/material.dart';

class Conditional extends StatelessWidget {
  final bool condition;
  final Widget child;
  const Conditional({super.key, required this.condition, required this.child,});

  @override
  Widget build(BuildContext context) {
    return condition ? child : const SizedBox.shrink();
  }
}