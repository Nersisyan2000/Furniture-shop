import 'package:flutter/material.dart';
import 'package:furniture_shop/domain/enums/profile_values.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

extension PaymentMethodExtension on ProfileValues {
  String get name {
    switch (this) {
      case ProfileValues.profile:
        return 'Profile';
      case ProfileValues.paymentMethods:
        return 'Payment Methods';
      case ProfileValues.orderHistory:
        return 'Order history';
      case ProfileValues.deliveryAddress:
        return 'Delivery Address';
      case ProfileValues.supportCenter:
        return 'Support Center';
      case ProfileValues.legalPolicy:
        return 'Legal Policy ';
      default:
        return '';
    }
  }

  SvgPicture? get icon {
    switch (this) {
      case ProfileValues.profile:
        return FurnitureAssets.icons.userCircle.svg(
          fit: BoxFit.none,
        );
      case ProfileValues.paymentMethods:
        return FurnitureAssets.icons.wallet.svg(
          fit: BoxFit.none,
        );
      case ProfileValues.orderHistory:
        return FurnitureAssets.icons.archive.svg(
          fit: BoxFit.none,
        );
      case ProfileValues.deliveryAddress:
        return FurnitureAssets.icons.deliveryAirPlane.svg(
          fit: BoxFit.none,
        );
      case ProfileValues.supportCenter:
        return FurnitureAssets.icons.alignCenter.svg(
          fit: BoxFit.none,
        );
      case ProfileValues.legalPolicy:
        return FurnitureAssets.icons.security.svg(
          fit: BoxFit.none,
        );
      default:
        return null;
    }
  }
}
