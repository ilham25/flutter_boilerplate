import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/banner/banner.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar.dart';
import 'package:flutter_boilerplate/core/widgets/navigation/tab_bar_item.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        title: "Templates",
        actions: [
          UIKitIconButton.secondary(
            Assets.icons.search,
            onTap: () {
              // context.router.push(const SearchRoute());
            },
          ),
        ],
      ),
      body: const HomeBody(),
      bottomNavigationBar: UIKitTabBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          debugPrint("index: $index");
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          UIKitTabBarItem(icon: Assets.icons.explore, title: "Templates"),
          UIKitTabBarItem(icon: Assets.icons.categories, title: "Widgets"),
          UIKitTabBarItem(icon: Assets.icons.settings, title: "Styles"),
        ],
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    UIKitToast.init(context);

    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
        vertical: AppSetting.setHeight(MyTheme.defaultPadding),
      ),
      children: [
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Chat",
            description: "Chat App Template Example",
            image: Assets.images.chatTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const ChatListRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Feedback",
            description: "Feedback Screen Template Example",
            image: Assets.images.feedbackTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const FeedbackRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Login",
            description: "Login Screen Template Example",
            image: Assets.images.loginTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const LoginRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Settings",
            description: "Settings Screen Template Example",
            image: Assets.images.settingsTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const SettingsRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Empty State",
            description: "Empty State Screen Template Example",
            image: Assets.images.emptyStateTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const EmptyStateRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Search & Filter",
            description: "Search & Filter Screen Template Example",
            image: Assets.images.searchFilterTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const SearchFilterRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Events",
            description: "Events Screen Template Example",
            image: Assets.images.eventsTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const EventsRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Subscription Plans",
            description: "Subscription Plans Screen Template Example",
            image: Assets.images.subscriptionPlansTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const SubscriptionPlansRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "Onboarding",
            description: "Onboarding Screen Template Example",
            image: Assets.images.onboardingTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const OnboardingInitRoute());
            },
          ),
        ),
        Space.h(16),
        SizedBox(
          height: AppSetting.setHeight(160),
          child: UIKitBanner(
            title: "E-commerce",
            description: "E-commerce Screen Template Example",
            image: Assets.images.ecommerceTemplatePreview.path,
            action: "Show Template",
            onAction: () {
              context.router.push(const EcommerceRoute());
            },
          ),
        ),
      ],
    );
  }
}
