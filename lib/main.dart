import 'package:flutter/material.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_screen.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_screen_provider.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen_provider.dart';
import 'package:furniture_shop/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:furniture_shop/presentation/screens/onboarding/onboarding_screen_provider.dart';
import 'package:furniture_shop/routes/app_router.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en')],
        path: 'packages/furniture_localization/assets/translations',
        fallbackLocale: const Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnBoardingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 812),
        minTextAdapt: true,
        child: MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Furniture Shop',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
