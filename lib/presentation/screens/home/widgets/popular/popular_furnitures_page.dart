import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_cubit/popular_cubit.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_furnitures.dart';

class PopularFurnituresPage extends StatelessWidget {
  const PopularFurnituresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PopularCubit>()..fetchPopularData(),
      child: const PopularFurnitures(),
    );
  }
}
