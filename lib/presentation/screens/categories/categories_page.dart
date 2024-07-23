import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/presentation/screens/categories/categories_cubit/categories_cubit.dart';
import 'package:furniture_shop/presentation/screens/categories/categories_screen.dart';

@RoutePage()
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoriesCubit>()..fetchCategories(),
      child: const CategoriesScreen(),
    );
  }
}
