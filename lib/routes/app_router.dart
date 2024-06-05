import 'package:auto_route/auto_route.dart';
import 'package:furniture_shop/example/example.dart';
import 'package:furniture_shop/presentation/screens/auto_tabs/auto_tabs_screen.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen.dart';

import '../presentation/screens/favourite/favourite_screen.dart';
import '../presentation/screens/filter/filter_screen.dart';
import '../presentation/screens/onboarding/onboarding_screen.dart';
import '../presentation/screens/profile/profile_screen.dart';
import '../presentation/screens/search/search_screen.dart';
import '../presentation/screens/shopping/shopping_screen.dart';
import '../presentation/screens/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ExampleRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page, path: '/onboardingScreen'),
        AutoRoute(page: FeedRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: FavouriteRoute.page),
          AutoRoute(page: ShoppingRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: FilterRoute.page),
      ];
}
