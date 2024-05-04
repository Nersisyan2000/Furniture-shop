import 'package:flutter/material.dart';
import 'package:furniture_shop/example/example.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_localization/furniture_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en')],
        path:
            'packages/furniture_localization/assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Furniture Shop',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const Example(),
      ),
    );
  }
}
