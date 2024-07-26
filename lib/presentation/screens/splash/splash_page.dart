import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/presentation/screens/auth/auth_cubit/auth_cubit.dart';
import 'package:furniture_shop/presentation/screens/splash/splash_screen.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: const SplashScreen(),
    );
  }
}
