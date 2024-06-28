import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:furniture_shop/presentation/screens/detail/widgets/detail_info/detail_info.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, @PathParam('id') this.id});

  final String? id;

  PreferredSize _appBarSection() {
    return PreferredSize(
      preferredSize: Size.fromHeight(90.h),
      child: AppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () {},
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
      ).paddingAll(20.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              DetailInfo(),
            ],
          ),
        ),
      ).paddingAll(20.0),
    );
  }
}
