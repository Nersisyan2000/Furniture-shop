import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/screens/favourite/favourite_cubit/favourite_cubit.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_empty_widget.dart';
import 'package:furniture_shop/presentation/widgets/furniture_high_card.dart';
import 'package:furniture_shop/presentation/widgets/furniture_progress_indicator.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: FurnitureAppBar(
          leading: FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.arrowBack.svg(),
            onTap: () => context.router.maybePop(),
          ),
          title: Text(
            context.tr(Localization.favourite),
            style: switzer20MediumTextStyle,
          ),
          // actions: [
          //   FurnitureIconButton.whiteMode(
          //     icon: FurnitureAssets.icons.heart.svg(),
          //     onTap: () {},
          //   )
          // ],
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<FavouriteCubit, FavouriteState>(
            builder: (context, state) {
          if (state is FavouriteLoadingState) {
            return const FurnitureProgressIndicator();
          } else if (state is FavouriteLoadedState) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
                childAspectRatio: 0.73,
              ),
              itemCount: state.favouriteData.length,
              itemBuilder: (context, index) {
                return Center(
                  child: FurnitureHighCard(
                    cardData: state.favouriteData[index],
                  ),
                );
              },
            );
          } else if (state is FavouriteEmptyState) {
            return const FurnitureEmptyWidget();
          } else if (state is FavouriteFailureState) {
            return Center(
              child: Text('Error is ${state.message}'),
            );
          }
          return const SizedBox.shrink();
        }),
      ),
    );
  }
}
