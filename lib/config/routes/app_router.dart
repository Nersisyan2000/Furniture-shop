import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:furniture_shop/example/example.dart';
import 'package:furniture_shop/presentation/screens/auth/sign_in/sign_in_screen.dart';
import 'package:furniture_shop/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:furniture_shop/presentation/screens/auto_tabs/auto_tabs_screen.dart';
import 'package:furniture_shop/presentation/screens/categories/categories_screen.dart';
import 'package:furniture_shop/presentation/screens/check_out/check_out_screen.dart';
import 'package:furniture_shop/presentation/screens/detail/detail_page.dart';
import 'package:furniture_shop/presentation/screens/favourite/favourite_page.dart';
import 'package:furniture_shop/presentation/screens/filter/filter_screen.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen.dart';
import 'package:furniture_shop/presentation/screens/most_interested/most_interested_screen.dart';
import 'package:furniture_shop/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:furniture_shop/presentation/screens/popular/popular_screen.dart';
import 'package:furniture_shop/presentation/screens/profile/profile_screen.dart';
import 'package:furniture_shop/presentation/screens/search/search_screen.dart';
import 'package:furniture_shop/presentation/screens/shopping/shopping_page.dart';
import 'package:furniture_shop/presentation/screens/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ExampleRoute.page),
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: OnboardingRoute.page, path: '/onboardingScreen'),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: FeedRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: FavouriteRoute.page),
          AutoRoute(page: CategoriesRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: FilterRoute.page),
        AutoRoute(page: ShoppingRoute.page),
        AutoRoute(page: MostInterestedRoute.page),
        AutoRoute(page: PopularRoute.page),
        AutoRoute(page: DetailRoute.page),
        AutoRoute(page: CheckOutRoute.page, initial: true),
      ];
}
