import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_cubit/most_interested_cubit.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_list.dart';

class MostInterestedListPage extends StatelessWidget {
  const MostInterestedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MostInterestedCubit()..fetchMostInterestedData(),
      child: const MostInterestedList(),
    );
  }
}
