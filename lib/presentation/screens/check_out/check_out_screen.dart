import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/domain/enums/payment_methods.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_address_radio_card.dart';
import 'package:furniture_shop/utils/extensions/payment_extensions.dart';
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

  Widget _addressesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          context.tr(
            Localization.shippintTo,
          ),
          textAlign: TextAlign.start,
          style: switzer20MediumTextStyle,
        ),
        FurnitureAddressRadioCard(
          title: context.tr(
            Localization.homeAddress,
          ),
          phoneNumber: '(269) 444-6853',
          roadNumber: 'Road Number 5649 Akali',
          value: 1,
          selectedValue: _selectedValue,
          onChanged: (int? value) {
            debugPrint('$value value');
            setState(() {
              _selectedValue = value;
            });
          },
        ).paddingSymmetric(
          vertical: 16.h,
        ),
        FurnitureAddressRadioCard(
          title: context.tr(
            Localization.officeAddress,
          ),
          phoneNumber: '259- 444-6853',
          roadNumber: '1578 H Blog Shekh Para',
          value: 2,
          selectedValue: _selectedValue,
          onChanged: (int? value) {
            debugPrint('$value value');
            setState(() {
              _selectedValue = value;
            });
          },
        )
      ],
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
                  _addressesSection(context).paddingSymmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  Column(
                    children: [
                      Text(
                        context.tr(
                          Localization.paymentMethod,
                        ), // Payment Method
                      ),
                      SizedBox(
                        height: 268.h,
                        child: ListView(
                          children: PaymentMethod.values.map((method) {
                            return ListTile(
                              leading: Icon(method.icon),
                              title: Text(method.name),
                              onTap: () {
                                // Handle tap on payment method
                                print('Selected ${method.name}');
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
