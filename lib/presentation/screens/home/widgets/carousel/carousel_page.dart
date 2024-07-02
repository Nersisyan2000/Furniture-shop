import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/data/locator/service_locator.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/carousel/carousel_view.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/carousel/cubit/discount_cubit.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DiscountCubit>()..fetchDiscountData(),
      child: const CarouselView(),
    );
  }
}
