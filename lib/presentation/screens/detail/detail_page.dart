import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/presentation/screens/detail/detail_cubit/detail_cubit.dart';
import 'package:furniture_shop/presentation/screens/detail/detail_screen.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({super.key, this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailCubit()..fetchDetailItem(),
      child: DetailScreen(
        id: id,
      ),
    );
  }
}