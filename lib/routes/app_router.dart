import 'package:auto_route/auto_route.dart';
import 'package:furniture_shop/example/example.dart';

import '../presentation/screens/onboarding_screen/onboarding_screen.dart';
import '../presentation/screens/splash_screen/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ExampleRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page, path: '/onboardingScreen'),
      ];
}
