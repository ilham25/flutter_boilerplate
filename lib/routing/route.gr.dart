// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:flutter_boilerplate/core/widgets/filter/filter.dart' as _i7;
import 'package:flutter_boilerplate/core/widgets/search/search.dart' as _i13;
import 'package:flutter_boilerplate/presentation/home/home_screen.dart' as _i8;
import 'package:flutter_boilerplate/presentation/splash/splash_screen.dart'
    as _i16;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_detail_screen.dart'
    as _i1;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_list_screen.dart'
    as _i2;
import 'package:flutter_boilerplate/presentation/templates/empty_state/empty_state_screen.dart'
    as _i4;
import 'package:flutter_boilerplate/presentation/templates/events/events_screen.dart'
    as _i5;
import 'package:flutter_boilerplate/presentation/templates/feedback/feedback_screen.dart'
    as _i6;
import 'package:flutter_boilerplate/presentation/templates/login/confirmation_code_screen.dart'
    as _i3;
import 'package:flutter_boilerplate/presentation/templates/login/login_screen.dart'
    as _i9;
import 'package:flutter_boilerplate/presentation/templates/login/sign_up_screen.dart'
    as _i15;
import 'package:flutter_boilerplate/presentation/templates/onboarding/onboarding_init_screen.dart'
    as _i10;
import 'package:flutter_boilerplate/presentation/templates/onboarding/onboarding_personalize_screen.dart'
    as _i11;
import 'package:flutter_boilerplate/presentation/templates/search_filter/search_filter_screen.dart'
    as _i12;
import 'package:flutter_boilerplate/presentation/templates/settings/settings_screen.dart'
    as _i14;
import 'package:flutter_boilerplate/presentation/templates/subscription_plans/subscription_plans_screen.dart'
    as _i17;

/// generated route for
/// [_i1.ChatDetailScreen]
class ChatDetailRoute extends _i18.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i19.Key? key,
    required _i2.ChatListModel detail,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         ChatDetailRoute.name,
         args: ChatDetailRouteArgs(key: key, detail: detail),
         initialChildren: children,
       );

  static const String name = 'ChatDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatDetailRouteArgs>();
      return _i1.ChatDetailScreen(key: args.key, detail: args.detail);
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({this.key, required this.detail});

  final _i19.Key? key;

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
class ChatListRoute extends _i18.PageRouteInfo<void> {
  const ChatListRoute({List<_i18.PageRouteInfo>? children})
    : super(ChatListRoute.name, initialChildren: children);

  static const String name = 'ChatListRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatListScreen();
    },
  );
}

/// generated route for
/// [_i3.ConfirmationCodeScreen]
class ConfirmationCodeRoute extends _i18.PageRouteInfo<void> {
  const ConfirmationCodeRoute({List<_i18.PageRouteInfo>? children})
    : super(ConfirmationCodeRoute.name, initialChildren: children);

  static const String name = 'ConfirmationCodeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i3.ConfirmationCodeScreen();
    },
  );
}

/// generated route for
/// [_i4.EmptyStateScreen]
class EmptyStateRoute extends _i18.PageRouteInfo<void> {
  const EmptyStateRoute({List<_i18.PageRouteInfo>? children})
    : super(EmptyStateRoute.name, initialChildren: children);

  static const String name = 'EmptyStateRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i4.EmptyStateScreen();
    },
  );
}

/// generated route for
/// [_i5.EventsScreen]
class EventsRoute extends _i18.PageRouteInfo<void> {
  const EventsRoute({List<_i18.PageRouteInfo>? children})
    : super(EventsRoute.name, initialChildren: children);

  static const String name = 'EventsRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i5.EventsScreen();
    },
  );
}

/// generated route for
/// [_i6.FeedbackScreen]
class FeedbackRoute extends _i18.PageRouteInfo<void> {
  const FeedbackRoute({List<_i18.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i6.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i7.FilterScreen]
class FilterRoute extends _i18.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    _i19.Key? key,
    required _i7.UIKitFilterDelegate<dynamic> delegate,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         FilterRoute.name,
         args: FilterRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'FilterRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterRouteArgs>();
      return _i7.FilterScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key, required this.delegate});

  final _i19.Key? key;

  final _i7.UIKitFilterDelegate<dynamic> delegate;

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
/// [_i8.HomeScreen]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i8.HomeScreen();
    },
  );
}

/// generated route for
/// [_i9.LoginScreen]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i9.LoginScreen();
    },
  );
}

/// generated route for
/// [_i10.OnboardingInitScreen]
class OnboardingInitRoute extends _i18.PageRouteInfo<void> {
  const OnboardingInitRoute({List<_i18.PageRouteInfo>? children})
    : super(OnboardingInitRoute.name, initialChildren: children);

  static const String name = 'OnboardingInitRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i10.OnboardingInitScreen();
    },
  );
}

/// generated route for
/// [_i11.OnboardingPersonalizeScreen]
class OnboardingPersonalizeRoute extends _i18.PageRouteInfo<void> {
  const OnboardingPersonalizeRoute({List<_i18.PageRouteInfo>? children})
    : super(OnboardingPersonalizeRoute.name, initialChildren: children);

  static const String name = 'OnboardingPersonalizeRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i11.OnboardingPersonalizeScreen();
    },
  );
}

/// generated route for
/// [_i12.SearchFilterScreen]
class SearchFilterRoute extends _i18.PageRouteInfo<void> {
  const SearchFilterRoute({List<_i18.PageRouteInfo>? children})
    : super(SearchFilterRoute.name, initialChildren: children);

  static const String name = 'SearchFilterRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i12.SearchFilterScreen();
    },
  );
}

/// generated route for
/// [_i13.SearchScreen]
class SearchRoute extends _i18.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i19.Key? key,
    required _i13.UIKitSearchDelegate<dynamic> delegate,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>();
      return _i13.SearchScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, required this.delegate});

  final _i19.Key? key;

  final _i13.UIKitSearchDelegate<dynamic> delegate;

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
/// [_i14.SettingsScreen]
class SettingsRoute extends _i18.PageRouteInfo<void> {
  const SettingsRoute({List<_i18.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i14.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i15.SignUpScreen]
class SignUpRoute extends _i18.PageRouteInfo<void> {
  const SignUpRoute({List<_i18.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i15.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i16.SplashScreen();
    },
  );
}

/// generated route for
/// [_i17.SubscriptionPlansScreen]
class SubscriptionPlansRoute extends _i18.PageRouteInfo<void> {
  const SubscriptionPlansRoute({List<_i18.PageRouteInfo>? children})
    : super(SubscriptionPlansRoute.name, initialChildren: children);

  static const String name = 'SubscriptionPlansRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i17.SubscriptionPlansScreen();
    },
  );
}
