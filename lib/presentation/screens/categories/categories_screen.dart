import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/screens/categories/categories_cubit/categories_cubit.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_empty_widget.dart';
import 'package:furniture_shop/presentation/widgets/furniture_flat_card.dart';
import 'package:furniture_shop/presentation/widgets/furniture_progress_indicator.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  PreferredSize _categoriesAppBar(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: FurnitureAppBar(
          leading: FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.arrowBack.svg(),
            onTap: () => context.router.maybePop(),
          ),
          title: Text(
            context.tr(Localization.categories),
            style: switzer20MediumTextStyle,
          ),
          actions: [
            FurnitureIconButton.whiteMode(
              icon: FurnitureAssets.icons.bag.svg(),
              onTap: () {},
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _categoriesAppBar(context),
      body: SafeArea(
        child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) {
          if (state is CategoriesLoadingState) {
            return const FurnitureProgressIndicator(
              color: FurnitureColors.primaryColor,
            );
          } else if (state is CategoriesLoadedState) {
            return ListView.builder(
                itemCount: state.categoriesData.length,
                itemBuilder: (context, index) {
                  final categoryItem = state.categoriesData[index];
                  return FurnitureFlatCard(
                    title: categoryItem.name,
                    subTitle: '${categoryItem.availableQuantity} products',
                    isCenter: true,
                    imageUrl: categoryItem.pictureUrl,
                    arrowRightIcon: true,
                  ).paddingOnly(bottom: 16.h);
                }).paddingOnly(top: 24.h);
          } else if (state is CategoriesEmptyState) {
            return const FurnitureEmptyWidget();
          } else if (state is CategoriesFailureState) {
            return Center(
              child: Text(state.message),
            );
          }
          return const SizedBox.shrink();
        }),
      ).paddingSymmetric(horizontal: 20.w),
    );
  }
}
