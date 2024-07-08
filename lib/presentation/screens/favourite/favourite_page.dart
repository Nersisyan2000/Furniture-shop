import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/presentation/screens/favourite/favourite_cubit/favourite_cubit.dart';
import 'package:furniture_shop/presentation/screens/favourite/favourite_view.dart';

@RoutePage()
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FavouriteCubit>()..fetchFavouriteData(),
      child: const FavouriteView(),
    );
  }
}
