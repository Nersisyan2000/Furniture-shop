import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_address_radio_card.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int? _selectedValue;

  PreferredSize _appBarSection(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.h),
      child: FurnitureAppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () => context.router.maybePop(),
        ),
        title: Text(
          context.tr(Localization.checkOut),
          style: switzer20MediumTextStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(context),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        context.tr(
                          Localization.shippintTo,
                        ),
                        textAlign: TextAlign.start,
                        style: switzer20MediumTextStyle,
                      ),
                      // ListTile(
                      //   title: Text('Option 1'),
                      //   leading: Radio<int>(
                      //     value: 1,
                      //     groupValue: _selectedValue,
                      //     onChanged: (int? value) {
                      //       setState(() {
                      //         _selectedValue = value;
                      //       });
                      //     },
                      //   ),
                      // ),
                      FurnitureAddressRadioCard(
                        selectedValue: _selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 20.w, vertical: 16.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
