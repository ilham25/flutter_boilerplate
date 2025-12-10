import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';

Future<T?> showUIKitFilter<T>({
  required BuildContext context,
  required UIKitFilterDelegate delegate,
}) async {
  return await context.router.push(FilterRoute(delegate: delegate));
}

abstract class UIKitFilterDelegate<T> {
  Widget buildFilter(BuildContext context);

  void close(BuildContext context, T? result) {
    context.router.maybePop(result);
  }
}

@RoutePage()
class FilterScreen extends StatelessWidget {
  final UIKitFilterDelegate delegate;

  const FilterScreen({super.key, required this.delegate});

  @override
  Widget build(BuildContext context) {
    return FilterBody(delegate: delegate);
  }
}

class FilterBody extends StatefulWidget {
  final UIKitFilterDelegate delegate;

  const FilterBody({super.key, required this.delegate});

  @override
  State<FilterBody> createState() => _FilterBodyState();
}

class _FilterBodyState extends State<FilterBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Filter",
        leading: UIKitButton.tertiary(
          title: "Cancel",
          onTap: () {
            context.router.maybePop();
          },
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(10),
            vertical: AppSetting.setHeight(12),
          ),
        ),
        actions: [
          UIKitButton.tertiary(
            title: "Clear All",
            onTap: () {},
            padding: EdgeInsets.symmetric(
              horizontal: AppSetting.setWidth(10),
              vertical: AppSetting.setHeight(12),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: widget.delegate.buildFilter(context)),
            Container(
              padding: .symmetric(
                horizontal: AppSetting.setWidth(24),
                vertical: AppSetting.setHeight(24),
              ),
              child: UIKitButton(
                title: "Apply Filters",
                leftIcon: Assets.icons.placeholder,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
