// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_boilerplate/presentation/common/screens/search_screen.dart'
    as _i5;
import 'package:flutter_boilerplate/presentation/home/home_screen.dart' as _i4;
import 'package:flutter_boilerplate/presentation/splash/splash_screen.dart'
    as _i6;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_detail_screen.dart'
    as _i1;
import 'package:flutter_boilerplate/presentation/templates/chat/chat_list_screen.dart'
    as _i2;
import 'package:flutter_boilerplate/presentation/templates/feedback/feedback_screen.dart'
    as _i3;

/// generated route for
/// [_i1.ChatDetailScreen]
class ChatDetailRoute extends _i7.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i8.Key? key,
    required _i2.ChatListModel detail,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         ChatDetailRoute.name,
         args: ChatDetailRouteArgs(key: key, detail: detail),
         initialChildren: children,
       );

  static const String name = 'ChatDetailRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChatDetailRouteArgs>();
      return _i1.ChatDetailScreen(key: args.key, detail: args.detail);
    },
  );
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({this.key, required this.detail});

  final _i8.Key? key;

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
class ChatListRoute extends _i7.PageRouteInfo<void> {
  const ChatListRoute({List<_i7.PageRouteInfo>? children})
    : super(ChatListRoute.name, initialChildren: children);

  static const String name = 'ChatListRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatListScreen();
    },
  );
}

/// generated route for
/// [_i3.FeedbackScreen]
class FeedbackRoute extends _i7.PageRouteInfo<void> {
  const FeedbackRoute({List<_i7.PageRouteInfo>? children})
    : super(FeedbackRoute.name, initialChildren: children);

  static const String name = 'FeedbackRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.FeedbackScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.SearchScreen]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute({List<_i7.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SearchScreen();
    },
  );
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashScreen();
    },
  );
}
