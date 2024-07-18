import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop/domain/enums/payment_methods.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

extension PaymentMethodExtension on PaymentMethod {
  String get name {
    switch (this) {
      case PaymentMethod.creditCard:
        return 'Credit Card';
      case PaymentMethod.paypal:
        return 'PayPal';
      case PaymentMethod.applePay:
        return 'Apple Pay';
      default:
        return '';
    }
  }

  SvgPicture? get icon {
    switch (this) {
      case PaymentMethod.creditCard:
        return FurnitureAssets.icons.creditCard.svg(
          fit: BoxFit.none,
        );
      case PaymentMethod.paypal:
        return FurnitureAssets.icons.payPal.svg(
          fit: BoxFit.none,
        );
      case PaymentMethod.applePay:
        return FurnitureAssets.icons.applePay.svg(
          fit: BoxFit.none,
        );
      default:
        return null;
    }
  }
}
