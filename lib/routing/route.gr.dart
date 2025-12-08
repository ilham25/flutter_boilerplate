// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_boilerplate/presentation/common/screens/search_screen.dart'
    as _i8;
import 'package:flutter_boilerplate/presentation/home/home_screen.dart' as _i6;
import 'package:flutter_boilerplate/presentation/splash/splash_screen.dart'
    as _i11;
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
    as _i7;
import 'package:flutter_boilerplate/presentation/templates/login/sign_up_screen.dart'
    as _i10;
import 'package:flutter_boilerplate/presentation/templates/settings/settings_screen.dart'
    as _i9;

/// generated route for
/// [_i1.ChatDetailScreen]
class ChatDetailRoute extends _i12.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i13.Key? key,
    required _i2.ChatListModel detail,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         ChatDetailRoute.name,
         args: ChatDetailRouteArgs(key: key, detail: detail),
         initialChildren: children,
       );

  static const String name = 'ChatDetailRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatDetailRouteArgs>();
      return _i1.ChatDetailScreen(key: args.key, detail: args.detail);
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({this.key, required this.detail});

  final _i13.Key? key;

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
class ChatListRoute extends _i12.PageRouteInfo<void> {
  const ChatListRoute({List<_i12.PageRouteInfo>? children})
    : super(ChatListRoute.name, initialChildren: children);

  static const String name = 'ChatListRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatListScreen();
    },
  );
}

/// generated route for
/// [_i3.ConfirmationCodeScreen]
class ConfirmationCodeRoute extends _i12.PageRouteInfo<void> {
  const ConfirmationCodeRoute({List<_i12.PageRouteInfo>? children})
    : super(ConfirmationCodeRoute.name, initialChildren: children);

  static const String name = 'ConfirmationCodeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.ConfirmationCodeScreen();
    },
  );
}

/// generated route for
/// [_i4.EmptyStateScreen]
class EmptyStateRoute extends _i12.PageRouteInfo<void> {
  const EmptyStateRoute({List<_i12.PageRouteInfo>? children})
    : super(EmptyStateRoute.name, initialChildren: children);

  static const String name = 'EmptyStateRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.EmptyStateScreen();
    },
  );
}

/// generated route for
/// [_i5.FeedbackScreen]
class FeedbackRoute extends _i12.PageRouteInfo<void> {
  const FeedbackRoute({List<_i12.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomeScreen();
    },
  );
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginScreen();
    },
  );
}

/// generated route for
/// [_i8.SearchScreen]
class SearchRoute extends _i12.PageRouteInfo<void> {
  const SearchRoute({List<_i12.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.SearchScreen();
    },
  );
}

/// generated route for
/// [_i9.SettingsScreen]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute({List<_i12.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i10.SignUpScreen]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute({List<_i12.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.SignUpScreen();
    },
  );
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.SplashScreen();
    },
  );
}
