import 'package:auto_route/auto_route.dart';
import 'package:furniture_shop/example/example.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ExampleRoute.page, initial: true),
      ];
}
