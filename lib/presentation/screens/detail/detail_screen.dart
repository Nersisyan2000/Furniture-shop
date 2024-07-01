import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:furniture_shop/presentation/screens/detail/widgets/detail_info/detail_info.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, @PathParam('id') this.id});

  final String? id;

  PreferredSize _appBarSection(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.h),
      child: AppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () => context.router.maybePop(),
        ),
        backgroundColor: FurnitureColors.whiteBackground,
        actions: [
          FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.hearthIcon.svg(
              color: Colors.black,
            ),
            onTap: () {},
          )
        ],
      ).paddingOnly(left: 20.w, right: 20.w, top: 10.h),
    );
  }

  Widget _totalPriceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FurnitureChangeCountElement(
          count: 1,
          minCount: 0,
          maxCount: 15,
          onChange: (count) => debugPrint(
            '$count',
          ),
        ),
        Text(
          'Total : \$90.900',
          style: switzer16MediumTextStyle,
        )
      ],
    );
  }

  Widget _footerSection() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          24.r,
        ), // Add radius to the top left corner
        topRight: Radius.circular(
          24.r,
        ), // Add radius to the top right corner
      ),
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _totalPriceSection(),
            24.verticalSpace,
            FurnitureElevatedIconButton(
              icon: FurnitureAssets.icons.cartTwo.svg(),
              onTap: () {},
              title: 'Add To Card',
            ).expanded(),
          ],
        ).paddingAll(
          24.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(context),
      body: SafeArea(
        child: Column(
          children: [
            const DetailInfo().paddingSymmetric(
              horizontal: 20.w,
            ),
            _footerSection().expanded(),
          ],
        ),
      ),
    );
  }
}
