// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:flutter_boilerplate/core/widgets/filter/filter.dart' as _i6;
import 'package:flutter_boilerplate/core/widgets/search/search.dart' as _i10;
import 'package:flutter_boilerplate/presentation/home/home_screen.dart' as _i7;
import 'package:flutter_boilerplate/presentation/splash/splash_screen.dart'
    as _i13;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_detail_screen.dart'
    as _i1;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_list_screen.dart'
    as _i2;
import 'package:flutter_boilerplate/presentation/templates/empty_state/empty_state_screen.dart'
    as _i4;
import 'package:flutter_boilerplate/presentation/templates/feedback/feedback_screen.dart'
    as _i5;
import 'package:flutter_boilerplate/presentation/templates/login/confirmation_code_screen.dart'
    as _i3;
import 'package:flutter_boilerplate/presentation/templates/login/login_screen.dart'
    as _i8;
import 'package:flutter_boilerplate/presentation/templates/login/sign_up_screen.dart'
    as _i12;
import 'package:flutter_boilerplate/presentation/templates/search_filter/search_filter_screen.dart'
    as _i9;
import 'package:flutter_boilerplate/presentation/templates/settings/settings_screen.dart'
    as _i11;

/// generated route for
/// [_i1.ChatDetailScreen]
class ChatDetailRoute extends _i14.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i15.Key? key,
    required _i2.ChatListModel detail,
    List<_i14.PageRouteInfo>? children,
  }) : super(
         ChatDetailRoute.name,
         args: ChatDetailRouteArgs(key: key, detail: detail),
         initialChildren: children,
       );

  static const String name = 'ChatDetailRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatDetailRouteArgs>();
      return _i1.ChatDetailScreen(key: args.key, detail: args.detail);
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({this.key, required this.detail});

  final _i15.Key? key;

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
class ChatListRoute extends _i14.PageRouteInfo<void> {
  const ChatListRoute({List<_i14.PageRouteInfo>? children})
    : super(ChatListRoute.name, initialChildren: children);

  static const String name = 'ChatListRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatListScreen();
    },
  );
}

/// generated route for
/// [_i3.ConfirmationCodeScreen]
class ConfirmationCodeRoute extends _i14.PageRouteInfo<void> {
  const ConfirmationCodeRoute({List<_i14.PageRouteInfo>? children})
    : super(ConfirmationCodeRoute.name, initialChildren: children);

  static const String name = 'ConfirmationCodeRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i3.ConfirmationCodeScreen();
    },
  );
}

/// generated route for
/// [_i4.EmptyStateScreen]
class EmptyStateRoute extends _i14.PageRouteInfo<void> {
  const EmptyStateRoute({List<_i14.PageRouteInfo>? children})
    : super(EmptyStateRoute.name, initialChildren: children);

  static const String name = 'EmptyStateRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i4.EmptyStateScreen();
    },
  );
}

/// generated route for
/// [_i5.FeedbackScreen]
class FeedbackRoute extends _i14.PageRouteInfo<void> {
  const FeedbackRoute({List<_i14.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i5.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i6.FilterScreen]
class FilterRoute extends _i14.PageRouteInfo<FilterRouteArgs> {
  FilterRoute({
    _i15.Key? key,
    required _i6.UIKitFilterDelegate<dynamic> delegate,
    List<_i14.PageRouteInfo>? children,
  }) : super(
         FilterRoute.name,
         args: FilterRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'FilterRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FilterRouteArgs>();
      return _i6.FilterScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key, required this.delegate});

  final _i15.Key? key;

  final _i6.UIKitFilterDelegate<dynamic> delegate;

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
/// [_i7.HomeScreen]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i7.HomeScreen();
    },
  );
}

/// generated route for
/// [_i8.LoginScreen]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoginScreen();
    },
  );
}

/// generated route for
/// [_i9.SearchFilterScreen]
class SearchFilterRoute extends _i14.PageRouteInfo<void> {
  const SearchFilterRoute({List<_i14.PageRouteInfo>? children})
    : super(SearchFilterRoute.name, initialChildren: children);

  static const String name = 'SearchFilterRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i9.SearchFilterScreen();
    },
  );
}

/// generated route for
/// [_i10.SearchScreen]
class SearchRoute extends _i14.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i15.Key? key,
    required _i10.UIKitSearchDelegate<dynamic> delegate,
    List<_i14.PageRouteInfo>? children,
  }) : super(
         SearchRoute.name,
         args: SearchRouteArgs(key: key, delegate: delegate),
         initialChildren: children,
       );

  static const String name = 'SearchRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>();
      return _i10.SearchScreen(key: args.key, delegate: args.delegate);
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, required this.delegate});

  final _i15.Key? key;

  final _i10.UIKitSearchDelegate<dynamic> delegate;

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
/// [_i11.SettingsScreen]
class SettingsRoute extends _i14.PageRouteInfo<void> {
  const SettingsRoute({List<_i14.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i11.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i12.SignUpScreen]
class SignUpRoute extends _i14.PageRouteInfo<void> {
  const SignUpRoute({List<_i14.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i12.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i13.SplashScreen]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i14.PageInfo page = _i14.PageInfo(
    name,
    builder: (data) {
      return const _i13.SplashScreen();
    },
  );
}
