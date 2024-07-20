import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/shopping/shopping_cubit/shopping_cubit.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_costs_section.dart';
import 'package:furniture_shop/presentation/widgets/furniture_empty_widget.dart';
import 'package:furniture_shop/presentation/widgets/furniture_flat_card.dart';
import 'package:furniture_shop/presentation/widgets/furniture_progress_indicator.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  PreferredSize _appBarSection(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80.h),
      child: FurnitureAppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () => context.router.maybePop(),
        ),
        title: Text(
          context.tr(Localization.shopping),
          style: switzer20MediumTextStyle,
        ),
        actions: [
          FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.trash.svg(),
            onTap: () {},
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(context),
      body: SafeArea(
        child: BlocBuilder<ShoppingCubit, ShoppingState>(builder: (
          context,
          state,
        ) {
          if (state is ShoppingLoadingState) {
            return const FurnitureProgressIndicator();
          } else if (state is ShoppingLoadedState) {
            return Stack(
              children: [
                Positioned.fill(
                  child: ListView.builder(
                    itemCount: state.shoppingData.length,
                    itemBuilder: (context, index) {
                      final item = state.shoppingData[index];
                      return FurnitureFlatCard(
                        imageUrl: item.productImg,
                        title: item.productName,
                        subTitle: item.companyName,
                        price: 279.95,
                        isChangeCountElement: true,
                      ).paddingSymmetric(vertical: 8.h);
                    },
                  ).paddingOnly(left: 20.w, right: 20.w, bottom: 265.h),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: FurnitureCostsSection(
                    title: context.tr(Localization.orderSummary),
                    firstSubTitle: context.tr(Localization.subtotal),
                    firstSubTitleValue: 926.99,
                    secondSubTitle: context.tr(Localization.shippingCost),
                    secondSubTitleValue: 26.00,
                    totalTitle: context.tr(Localization.totalPayment),
                    totalValue: 956.90,
                    buttonText: context.tr(Localization.checkOut),
                    onTap: () => context.router.push(const CheckOutRoute()),
                  ),
                ),
              ],
            );
          } else if (state is ShoppingEmptyState) {
            return const FurnitureEmptyWidget();
          } else if (state is ShoppingFailureState) {
            return Center(
              child: Text(
                state.message,
              ),
            );
          }
          return const SizedBox.shrink();
        }),
      ),
    );
  }
}
