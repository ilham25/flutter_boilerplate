import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),

    // Templates
    // -- Chat
    AutoRoute(page: ChatListRoute.page),
    AutoRoute(page: ChatDetailRoute.page),
    // -- Feedback
    AutoRoute(page: FeedbackRoute.page),
    // -- Login
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: ConfirmationCodeRoute.page),

    // -- Settings
    AutoRoute(page: SettingsRoute.page),

    // -- Empty State
    AutoRoute(page: EmptyStateRoute.page),

    // Common
    CustomRoute(
      page: SearchRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      duration: Duration(milliseconds: 250),
      reverseDuration: Duration(milliseconds: 250),
      opaque: false,
    ),
  ];
  @override
  List<AutoRouteGuard> get guards => [];
}
