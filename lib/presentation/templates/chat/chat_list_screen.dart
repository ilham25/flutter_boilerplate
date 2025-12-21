import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/avatar/avatar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/input/search_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatListBody();
  }
}

class ChatListBody extends StatefulWidget {
  const ChatListBody({super.key});

  @override
  State<ChatListBody> createState() => _ChatListBodyState();
}

class _ChatListBodyState extends State<ChatListBody> {
  final List<ChatListModel> chatLists = [
    ChatListModel(
      name: "Haley James",
      message: "Stand up for what you believe in",
      count: 9,
    ),
    ChatListModel(
      name: "Nathan Scott",
      message:
          "One day you’re seventeen and planning for someday. And then quietly and without...",
    ),
    ChatListModel(
      name: "Brooke Davis",
      message: "I am who I am. No excuses.",
      count: 2,
    ),
    ChatListModel(
      name: "Jamie Scott",
      message: "Some people are a little different. I think that’s cool.",
    ),
    ChatListModel(
      name: "Marvin McFadden",
      message:
          "Last night in the NBA the Charlotte Bobcats quietly made a move that most sports fans...",
    ),
    ChatListModel(name: "Antwon Taylor", message: "Meet me at the Rivercourt"),
    ChatListModel(
      name: "Jake Jagielski",
      message:
          "In your life, you're gonna go to some great places, and do some wonderful things.",
    ),
    ChatListModel(
      name: "Peyton Sawyer",
      message: "Every song ends, is that any reason not to enjoy the music?",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Chats",
        leading: UIKitButton.tertiary(
          title: "Edit",
          onTap: () {},
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(10),
            vertical: AppSetting.setHeight(12),
          ),
        ),
        actions: [UIKitIconButton.secondary(Assets.icons.create, onTap: () {})],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSetting.setWidth(16),
              ),
              child: UIKitSearchBar(placeholder: "Search"),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 2));
                },
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSetting.setWidth(8),
                    vertical: AppSetting.setHeight(16),
                  ),
                  itemCount: chatLists.length,
                  itemBuilder: (context, index) {
                    final item = chatLists.elementAt(index);

                    return UIKitListItem.count(
                      title: item.name,
                      description: item.message,
                      count: item.count,
                      left: UIKitAvatar(),
                      titleTextStyle: MyTheme.style.heading.h5,
                      onTap: () {
                        context.router.push(ChatDetailRoute(detail: item));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: UIKitTabBar(
        currentIndex: 0,
        onTap: (index) {
          //
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.chat, title: "Chats"),
          UIKitTabBarItem(icon: Assets.icons.profile, title: "Friends"),
          UIKitTabBarItem(icon: Assets.icons.settings, title: "Settings"),
        ],
      ),
    );
  }
}

class ChatListModel {
  final String name;
  final String message;
  final int count;

  ChatListModel({required this.name, required this.message, this.count = 0});
}
