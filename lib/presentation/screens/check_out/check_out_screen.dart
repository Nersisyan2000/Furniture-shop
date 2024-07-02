import 'package:auto_route/annotations.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_localization/furniture_localization.dart';
import 'package:furniture_localization/localization_keys.dart';
import 'package:furniture_shop/data/local/check_out_data/amount_data/amount_data.dart';
import 'package:furniture_shop/data/local/check_out_data/payment_method_data/payment_method_data.dart';
import 'package:furniture_shop/data/local/check_out_data/shipping_address_data/shipping_address_data.dart';
import 'package:furniture_shop/presentation/screens/check_out/widgets/amount/amount_widget.dart';
import 'package:furniture_shop/presentation/screens/check_out/widgets/payment_method/payment_method_list_tile.dart';
import 'package:furniture_shop/presentation/screens/check_out/widgets/shipping_address/shipping_address_card.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
// import '../../../data/local/check_out_data/amount_data/amount_data.dart';
// import '../../../data/local/check_out_data/payment_method_data/payment_method_data.dart';
// import '../../../data/local/check_out_data/shipping_address_data/shipping_address_data.dart';

@RoutePage()
class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  PreferredSize _checkOutAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.h),
      child: AppBar(
        leading: FurnitureIconButton.whiteMode(
          icon: FurnitureAssets.icons.arrowBack.svg(),
          onTap: () {},
        ),
        backgroundColor: FurnitureColors.whiteBackground,
        actions: [
          FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.trash.svg(
              color: Colors.black,
            ),
            onTap: () {},
          )
        ],
        title: Center(
          child: Text(
            context.tr(Localization.shopping),
          ),
        ),
      ).paddingOnly(left: 20.w, right: 20.w, top: 10.h),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _checkOutAppBar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var shippingAddress in shippingAddressData)
              ShippingAddressCard(
                title: shippingAddress.title,
                shippingAddress: shippingAddress.shippingAddress,
                phone: shippingAddress.phone,
              ),
            Text(
              context.tr(Localization.paymentMethods),
              style: switzer20MediumTextStyle,
            ),
            for (var paymentItem = 0;
                paymentItem < paymentMethodData.length;
                paymentItem++)
              PaymentMethodListTile(
                paymentImg: paymentMethodData[paymentItem].paymentImg,
                paymentName: paymentMethodData[paymentItem].paymentName,
              ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    context.tr(Localization.amount),
                    style: switzer20MediumTextStyle,
                  ),
                  for (var amountItem = 0;
                      amountItem < amountData.length - 1;
                      amountItem++)
                    AmountWidget(
                      princeName: amountData[amountItem].priceName,
                      prince: amountData[amountItem].price,
                    ),
                  const Divider(color:FurnitureColors.subTextColor ,),
                  AmountWidget(
                    princeName: amountData[amountData.length-1].priceName,
                    prince: amountData[amountData.length-1].price,
                  ),
                  FurnitureElevatedButton(
                    onTap: () {},
                    title: context.tr(Localization.payment),
                  ).paddingAll(10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
