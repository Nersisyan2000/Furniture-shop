import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_cubit/popular_cubit.dart';
import 'package:furniture_shop/presentation/screens/home/widgets/popular/popular_cubit/popular_state.dart';
import 'package:furniture_shop/presentation/widgets/furniture_empty_widget.dart';
import 'package:furniture_shop/presentation/widgets/furniture_packed_card.dart';
import 'package:furniture_shop/presentation/widgets/furniture_progress_indicator.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class PopularFurnitures extends StatelessWidget {
  const PopularFurnitures({super.key});

  Widget _headerSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.tr(
            Localization.popular,
          ),
          style: switzer16SemiboldTextStyle,
        ),
        FurnitureTextButton(
          title: context.tr(Localization.viewAll),
          color: FurnitureColors.priceColor,
          onTap: () => context.router.push(
            const PopularRoute(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _headerSection(context),
        BlocBuilder<PopularCubit, PopularState>(builder: (context, state) {
          if (state is PopularLoadingState) {
            return SizedBox(
              height: 124.h,
              child: const FurnitureProgressIndicator(),
            );
          } else if (state is PopularLoadedState) {
            return SizedBox(
              height: 124.h,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => context.router.push(
                      DetailRoute(),
                    ),
                    child: FurniturePackedCard(
                      imageUrl: state.popularData[index].productImg ??
                          'https://i.pinimg.com/originals/4d/76/4c/4d764cb0c947632623f9026210f4f2f6.png',
                      title: state.popularData[index].productName ?? '',
                      subTitle: state.popularData[index].companyName ?? '',
                      price: state.popularData[index].productPrice ?? 0,
                    ).paddingOnly(
                      right: 8.w,
                    ),
                  );
                },
              ),
            );
          } else if (state is PopularEmptyState) {
            return FurnitureEmptyWidget(
              height: 124.h,
            );
          } else if (state is PopularFailureState) {
            return Text('Error: ${state.message}');
          }
          return const SizedBox.shrink();
        }),
      ],
    );
  }
}

// SizedBox(
//           height: 124.h,
//           child: ListView.builder(
//             itemCount: 4,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) {
//               return InkWell(
//                 onTap: () => context.router.push(
//                   DetailRoute(),
//                 ),
//                 child: const FurniturePackedCard(
//                   imageUrl:
//                       'https://i.pinimg.com/originals/4d/76/4c/4d764cb0c947632623f9026210f4f2f6.png', // state.popularData[index].productImg
//                   title: '', // state.popularData[index].productName
//                   subTitle: '', // state.popularData[index].companyName
//                   price: 0, // state.popularData[index].productPrice
//                 ).paddingOnly(
//                   right: 8.w,
//                 ),
//               );
//             },
//           ),
//         )
