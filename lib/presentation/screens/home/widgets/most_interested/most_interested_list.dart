import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/home/home_screen_provider.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_cubit/most_interested_cubit.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/most_interested/most_interested_cubit/most_interested_state.dart';
import 'package:furniture_shop/presentation/widgets/furniture_empty_widget.dart';
import 'package:furniture_shop/presentation/widgets/furniture_progress_indicator.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class MostInterestedList extends StatefulWidget {
  const MostInterestedList({super.key});

  @override
  State<MostInterestedList> createState() => _MostInterestedListState();
}

class _MostInterestedListState extends State<MostInterestedList> {
  Widget _mostInterestedItem(productItem) {
    return InkWell(
      onTap: () => context.router.push(DetailRoute()),
      child: Card(
        // color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FurnitureCachedNetworkImage(
              imageUrl: productItem.productImg,
              width: 110.w,
              height: 120.h,
            ).expanded(),
            _mostInterestedItemFooterPart(productItem),
          ],
        ).paddingAll(16.w),
      ),
    );
  }

  Widget _mostInterestedItemFooterPart(productItem) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _mostInterestedItemInfo(productItem),
        FurnitureIconButton(
          icon: FurnitureAssets.icons.basket.svg(),
          padding: paddingZero,
        ),
      ],
    );
  }

  Widget _mostInterestedItemInfo(productItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 130.w,
          child: Text(
            productItem.productName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: switzer16SemiboldTextStyle,
          ),
        ),
        Text(
          productItem.companyName,
          style: switzer13RegularTextStyle.copyWith(
              color: FurnitureColors.subTextColor),
        ),
        Text(
          '\$${productItem.productPrice}',
          style: switzer16MediumTextStyle.copyWith(
              color: FurnitureColors.priceColor),
        ).paddingOnly(top: 12.h),
      ],
    );
  }

  Widget _headerSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.tr(
            Localization.mostInterested,
          ),
          style: switzer16SemiboldTextStyle,
        ),
        FurnitureTextButton(
          title: context.tr(
            Localization.viewAll,
          ),
          color: FurnitureColors.priceColor,
          onTap: () => context.router.push(
            const MostInterestedRoute(),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    context.read<HomeProvider>().getMostInterested();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final productData = context.watch<HomeProvider>().mostInterestedData;
    return Column(
      children: [
        _headerSection(context),
        BlocBuilder<MostInterestedCubit, MostInterestedState>(
          builder: (context, state) {
            if (state is MostInterestedLoadingState) {
              return SizedBox(
                height: 264.h,
                child: const FurnitureProgressIndicator(),
              );
            } else if (state is MostInterestedLoadedState) {
              return Column(
                children: [
                  SizedBox(
                    height: 264
                        .h
                        .h, // Height of the container that holds the horizontal list
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.mostInterestedData
                          .length, // Number of items in the list
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 232.w, // Width of each card
                          child: _mostInterestedItem(
                                  state.mostInterestedData[index])
                              .paddingOnly(right: 8.w),
                        );
                      },
                    ),
                  ),
                ],
              );
            } else if (state is MostInterestedEmptyState) {
              return FurnitureEmptyWidget(
                height: 264.h,
              );
            } else if (state is MostInterestedFailureState) {
              return Text('Error: ${state.message}');
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
