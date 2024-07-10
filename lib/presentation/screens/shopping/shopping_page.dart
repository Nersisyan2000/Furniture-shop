import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/presentation/screens/shopping/shopping_cubit/shopping_cubit.dart';
import 'package:furniture_shop/presentation/screens/shopping/shopping_view.dart';

@RoutePage()
class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ShoppingCubit>()..fetchShoppingData(),
      child: const ShoppingView(),
    );
  }
}
