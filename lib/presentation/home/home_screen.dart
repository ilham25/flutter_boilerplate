import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/banner/banner.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/dialog/dialog.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Projects",
        actions: [
          UIKitIconButton(
            icon: Assets.icons.search,
            onTap: () {
              context.router.push(const SearchRoute());
            },
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    UIKitToast.init(context);

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(16),
            vertical: AppSetting.setHeight(16),
          ),
          child: Column(
            children: [
              UIKitBanner(
                title: "Title",
                description:
                    "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do.",
                image: "https://picsum.photos/200/300",
                action: "Show More",
                onAction: () {
                  UIKitToast.warning(
                    title: "Title",
                    description: "Description. Lorem ipsum dolor sit amet.",
                  );
                },
              ),
              Space.h(8),
              UIKitButton(
                title: "Primary",
                leftIcon: Assets.icons.add,
                rightIcon: Assets.icons.success,
                onTap: () {
                  UIKitDialog.show(
                    title: "Title",
                    description:
                        "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do.",
                    actions: [
                      UIKitButton.secondary(
                        title: "Cancel",
                        onTap: () {
                          context.router.maybePop();
                        },
                      ),
                      UIKitButton(
                        title: "Confirm",
                        onTap: () {
                          context.router.maybePop();
                        },
                      ),
                    ],
                  );
                },
              ),
              Space.h(8),
              UIKitButton.secondary(
                title: "Secondary",
                leftIcon: Assets.icons.close,
                rightIcon: Assets.icons.arrowRight,
                onTap: () {
                  UIKitDialog.show(
                    title: "Title",
                    description:
                        "Description. Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do.",
                    actions: [
                      UIKitButton.secondary(title: "Action 1", onTap: () {}),
                      UIKitButton.secondary(title: "Action 2", onTap: () {}),
                      UIKitButton(title: "Action 3", onTap: () {}),
                    ],
                  );
                },
              ),
              Space.h(8),
              UIKitButton.tertiary(
                title: "Tertiary",
                leftIcon: Assets.icons.close,
                rightIcon: Assets.icons.categories,
                onTap: () {
                  debugPrint("Tertiary");
                },
              ),
              Space.h(8),
            ],
          ),
        ),
      ],
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  final List<String> searchList = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Fig",
    "Grapes",
    "Kiwi",
    "Lemon",
    "Mango",
    "Orange",
    "Papaya",
    "Raspberry",
    "Strawberry",
    "Tomato",
    "Watermelon",
  ];

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  TextStyle get searchFieldStyle => MyTheme.style.body.s;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestionList = query.isEmpty
        ? []
        : searchList
              .where((item) => item.toLowerCase().contains(query.toLowerCase()))
              .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            // Show the search results based on the selected suggestion.
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> searchResults = searchList
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index]),
          onTap: () {
            // Handle the selected search result.
            close(context, searchResults[index]);
          },
        );
      },
    );
  }
}
