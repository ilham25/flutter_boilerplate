// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/material.dart' as _i25;
import 'package:flutter_boilerplate/core/widgets/filter/filter.dart' as _i11;
import 'package:flutter_boilerplate/core/widgets/search/search.dart' as _i19;
import 'package:flutter_boilerplate/presentation/home/home_screen.dart' as _i14;
import 'package:flutter_boilerplate/presentation/splash/splash_screen.dart'
    as _i22;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_detail_screen.dart'
    as _i1;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_list_screen.dart'
    as _i2;
import 'package:flutter_boilerplate/presentation/templates/ecommerce/ecommerce_bag_screen.dart'
    as _i4;
import 'package:flutter_boilerplate/presentation/templates/ecommerce/ecommerce_checkout_screen.dart'
    as _i5;
import 'package:flutter_boilerplate/presentation/templates/ecommerce/ecommerce_product_detail_screen.dart'
    as _i6;
import 'package:flutter_boilerplate/presentation/templates/ecommerce/ecommerce_screen.dart'
    as _i7;
import 'package:flutter_boilerplate/presentation/templates/empty_state/empty_state_screen.dart'
    as _i8;
import 'package:flutter_boilerplate/presentation/templates/events/events_screen.dart'
    as _i9;
import 'package:flutter_boilerplate/presentation/templates/feedback/feedback_screen.dart'
    as _i10;
import 'package:flutter_boilerplate/presentation/templates/finance/finance_overview_screen.dart'
    as _i12;
import 'package:flutter_boilerplate/presentation/templates/finance/finance_screen.dart'
    as _i13;
import 'package:flutter_boilerplate/presentation/templates/login/confirmation_code_screen.dart'
    as _i3;
import 'package:flutter_boilerplate/presentation/templates/login/login_screen.dart'
    as _i15;
import 'package:flutter_boilerplate/presentation/templates/login/sign_up_screen.dart'
    as _i21;
import 'package:flutter_boilerplate/presentation/templates/onboarding/onboarding_init_screen.dart'
    as _i16;
import 'package:flutter_boilerplate/presentation/templates/onboarding/onboarding_personalize_screen.dart'
    as _i17;
import 'package:flutter_boilerplate/presentation/templates/search_filter/search_filter_screen.dart'
    as _i18;
import 'package:flutter_boilerplate/presentation/templates/settings/settings_screen.dart'
    as _i20;
import 'package:flutter_boilerplate/presentation/templates/subscription_plans/subscription_plans_screen.dart'
    as _i23;

/// generated route for
/// [_i1.ChatDetailScreen]
class ChatDetailRoute extends _i24.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i25.Key? key,
    required _i2.ChatListModel detail,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         ChatDetailRoute.name,
         args: ChatDetailRouteArgs(key: key, detail: detail),
         initialChildren: children,
       );

  static const String name = 'ChatDetailRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatDetailRouteArgs>();
      return _i1.ChatDetailScreen(key: args.key, detail: args.detail);
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({this.key, required this.detail});

  final _i25.Key? key;

  final _i2.ChatListModel detail;

  @override
  String toString() {
    return 'ChatDetailRouteArgs{key: $key, detail: $detail}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChatDetailRouteArgs) return false;
    return key == other.key && detail == other.detail;
  }

  @override
  int get hashCode => key.hashCode ^ detail.hashCode;
}

/// generated route for
/// [_i2.ChatListScreen]
class ChatListRoute extends _i24.PageRouteInfo<void> {
  const ChatListRoute({List<_i24.PageRouteInfo>? children})
    : super(ChatListRoute.name, initialChildren: children);

  static const String name = 'ChatListRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatListScreen();
    },
  );
}

/// generated route for
/// [_i3.ConfirmationCodeScreen]
class ConfirmationCodeRoute extends _i24.PageRouteInfo<void> {
  const ConfirmationCodeRoute({List<_i24.PageRouteInfo>? children})
    : super(ConfirmationCodeRoute.name, initialChildren: children);

  static const String name = 'ConfirmationCodeRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i3.ConfirmationCodeScreen();
    },
  );
}

/// generated route for
/// [_i4.EcommerceBagScreen]
class EcommerceBagRoute extends _i24.PageRouteInfo<void> {
  const EcommerceBagRoute({List<_i24.PageRouteInfo>? children})
    : super(EcommerceBagRoute.name, initialChildren: children);

  static const String name = 'EcommerceBagRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i4.EcommerceBagScreen();
    },
  );
}

/// generated route for
/// [_i5.EcommerceCheckoutScreen]
class EcommerceCheckoutRoute extends _i24.PageRouteInfo<void> {
  const EcommerceCheckoutRoute({List<_i24.PageRouteInfo>? children})
    : super(EcommerceCheckoutRoute.name, initialChildren: children);

  static const String name = 'EcommerceCheckoutRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i5.EcommerceCheckoutScreen();
    },
  );
}

/// generated route for
/// [_i6.EcommerceProductDetailScreen]
class EcommerceProductDetailRoute extends _i24.PageRouteInfo<void> {
  const EcommerceProductDetailRoute({List<_i24.PageRouteInfo>? children})
    : super(EcommerceProductDetailRoute.name, initialChildren: children);

  static const String name = 'EcommerceProductDetailRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i6.EcommerceProductDetailScreen();
    },
  );
}

/// generated route for
/// [_i7.EcommerceScreen]
class EcommerceRoute extends _i24.PageRouteInfo<void> {
  const EcommerceRoute({List<_i24.PageRouteInfo>? children})
    : super(EcommerceRoute.name, initialChildren: children);

  static const String name = 'EcommerceRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i7.EcommerceScreen();
    },
  );
}

/// generated route for
/// [_i8.EmptyStateScreen]
class EmptyStateRoute extends _i24.PageRouteInfo<void> {
  const EmptyStateRoute({List<_i24.PageRouteInfo>? children})
    : super(EmptyStateRoute.name, initialChildren: children);

  static const String name = 'EmptyStateRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i8.EmptyStateScreen();
    },
  );
}

/// generated route for
/// [_i9.EventsScreen]
class EventsRoute extends _i24.PageRouteInfo<void> {
  const EventsRoute({List<_i24.PageRouteInfo>? children})
    : super(EventsRoute.name, initialChildren: children);

  static const String name = 'EventsRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i9.EventsScreen();
    },
  );
}

/// generated route for
/// [_i10.FeedbackScreen]
class FeedbackRoute extends _i24.PageRouteInfo<void> {
  const FeedbackRoute({List<_i24.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i10.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i11.FilterScreen]
class FilterRoute extends _i24.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    _i25.Key? key,
    required _i11.UIKitFilterDelegate<dynamic> delegate,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         FilterRoute.name,
         args: FilterRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'FilterRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterRouteArgs>();
      return _i11.FilterScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key, required this.delegate});

  final _i25.Key? key;

  final _i11.UIKitFilterDelegate<dynamic> delegate;

  @override
  String toString() {
    return 'FilterRouteArgs{key: $key, delegate: $delegate}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FilterRouteArgs) return false;
    return key == other.key && delegate == other.delegate;
  }

  @override
  int get hashCode => key.hashCode ^ delegate.hashCode;
}

/// generated route for
/// [_i12.FinanceOverviewScreen]
class FinanceOverviewRoute extends _i24.PageRouteInfo<void> {
  const FinanceOverviewRoute({List<_i24.PageRouteInfo>? children})
    : super(FinanceOverviewRoute.name, initialChildren: children);

  static const String name = 'FinanceOverviewRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i12.FinanceOverviewScreen();
    },
  );
}

/// generated route for
/// [_i13.FinanceScreen]
class FinanceRoute extends _i24.PageRouteInfo<void> {
  const FinanceRoute({List<_i24.PageRouteInfo>? children})
    : super(FinanceRoute.name, initialChildren: children);

  static const String name = 'FinanceRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i13.FinanceScreen();
    },
  );
}

/// generated route for
/// [_i14.HomeScreen]
class HomeRoute extends _i24.PageRouteInfo<void> {
  const HomeRoute({List<_i24.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i14.HomeScreen();
    },
  );
}

/// generated route for
/// [_i15.LoginScreen]
class LoginRoute extends _i24.PageRouteInfo<void> {
  const LoginRoute({List<_i24.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i15.LoginScreen();
    },
  );
}

/// generated route for
/// [_i16.OnboardingInitScreen]
class OnboardingInitRoute extends _i24.PageRouteInfo<void> {
  const OnboardingInitRoute({List<_i24.PageRouteInfo>? children})
    : super(OnboardingInitRoute.name, initialChildren: children);

  static const String name = 'OnboardingInitRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i16.OnboardingInitScreen();
    },
  );
}

/// generated route for
/// [_i17.OnboardingPersonalizeScreen]
class OnboardingPersonalizeRoute extends _i24.PageRouteInfo<void> {
  const OnboardingPersonalizeRoute({List<_i24.PageRouteInfo>? children})
    : super(OnboardingPersonalizeRoute.name, initialChildren: children);

  static const String name = 'OnboardingPersonalizeRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i17.OnboardingPersonalizeScreen();
    },
  );
}

/// generated route for
/// [_i18.SearchFilterScreen]
class SearchFilterRoute extends _i24.PageRouteInfo<void> {
  const SearchFilterRoute({List<_i24.PageRouteInfo>? children})
    : super(SearchFilterRoute.name, initialChildren: children);

  static const String name = 'SearchFilterRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i18.SearchFilterScreen();
    },
  );
}

/// generated route for
/// [_i19.SearchScreen]
class SearchRoute extends _i24.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i25.Key? key,
    required _i19.UIKitSearchDelegate<dynamic> delegate,
    List<_i24.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>();
      return _i19.SearchScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, required this.delegate});

  final _i25.Key? key;

  final _i19.UIKitSearchDelegate<dynamic> delegate;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, delegate: $delegate}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SearchRouteArgs) return false;
    return key == other.key && delegate == other.delegate;
  }

  @override
  int get hashCode => key.hashCode ^ delegate.hashCode;
}

/// generated route for
/// [_i20.SettingsScreen]
class SettingsRoute extends _i24.PageRouteInfo<void> {
  const SettingsRoute({List<_i24.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i20.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i21.SignUpScreen]
class SignUpRoute extends _i24.PageRouteInfo<void> {
  const SignUpRoute({List<_i24.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i21.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i22.SplashScreen]
class SplashRoute extends _i24.PageRouteInfo<void> {
  const SplashRoute({List<_i24.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i22.SplashScreen();
    },
  );
}

/// generated route for
/// [_i23.SubscriptionPlansScreen]
class SubscriptionPlansRoute extends _i24.PageRouteInfo<void> {
  const SubscriptionPlansRoute({List<_i24.PageRouteInfo>? children})
    : super(SubscriptionPlansRoute.name, initialChildren: children);

  static const String name = 'SubscriptionPlansRoute';

  static _i24.PageInfo page = _i24.PageInfo(
    name,
    builder: (data) {
      return const _i23.SubscriptionPlansScreen();
    },
  );
}
