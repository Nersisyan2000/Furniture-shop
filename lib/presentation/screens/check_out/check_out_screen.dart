import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_shop/domain/enums/payment_methods.dart';
import 'package:furniture_shop/presentation/screens/check_out/widgets/furniture_bottom_sheet_content.dart';
import 'package:furniture_shop/presentation/widgets/furniture_app_bar.dart';
import 'package:furniture_shop/presentation/widgets/furniture_address_radio_card.dart';
import 'package:furniture_shop/presentation/widgets/furniture_costs_section.dart';
import 'package:furniture_shop/utils/extensions/payment_extensions.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
// ignore: depend_on_referenced_packages

@RoutePage()
class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int? _selectedValue;
  int? _selectedPaymentValue;

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

  Widget _paymentMethodsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          textAlign: TextAlign.start,
          context.tr(
            Localization.paymentMethod,
          ),
          style: switzer20MediumTextStyle,
        ).paddingOnly(bottom: 8.h),
        SizedBox(
          height: 268.h,
          child: ListView(
              children: PaymentMethod.values.asMap().entries.map((entry) {
            int index = entry.key;
            PaymentMethod method = entry.value;
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: FurnitureColors.paymentGray,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: method.icon,
              ),
              title: Text(method.name),
              trailing: Transform.scale(
                scale: 1.3,
                child: Radio<int>(
                  value: index,
                  groupValue: _selectedPaymentValue,
                  activeColor: FurnitureColors.primaryColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentValue = value!;
                    });
                  },
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedPaymentValue = index;
                });
                // Handle tap on payment method
                debugPrint('Selected ${method.name}');
              },
            ).paddingSymmetric(vertical: 4.h);
          }).toList()),
        ),
      ],
    );
  }

  Widget _totalConstsSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: FurnitureCostsSection(
        title: context.tr(Localization.amount),
        firstSubTitle: context.tr(Localization.itemTotal),
        firstSubTitleValue: 367.65,
        secondSubTitle: context.tr(Localization.deliveryFree),
        secondSubTitleValue: 80,
        totalTitle: context.tr(Localization.total),
        totalValue: 447.99,
        buttonText: context.tr(Localization.payment),
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    24.r,
                  ), // Add radius to the top left corner
                  topRight: Radius.circular(
                    24.r,
                  ), // Add radius to the top right corner
                ),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: FurnitureBottomSheetContent(
                      onBack: () => context.router.push(
                        const FeedRoute(),
                      ),
                      onTap: () => context.router.push(const ShoppingRoute()),
                    ),
                  ),
                ),
              );
            },
          );
        },
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _addressesSection(context).paddingSymmetric(
                      vertical: 16.h,
                    ),
                    _paymentMethodsSection(context)
                  ],
                ).paddingSymmetric(horizontal: 20.w),
              ).paddingOnly(bottom: 200.h),
            ),
            _totalConstsSection(context)
          ],
        ),
      ),
    );
  }
}
