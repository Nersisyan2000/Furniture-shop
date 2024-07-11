import 'package:flutter/material.dart';
import 'package:furniture_shop/domain/enums/payment_methods.dart';

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

  IconData get icon {
    switch (this) {
      case PaymentMethod.creditCard:
        return Icons.credit_card;
      case PaymentMethod.paypal:
        return Icons.account_balance_wallet;
      case PaymentMethod.applePay:
        return Icons.phone_iphone;
      default:
        return Icons.payment;
    }
  }
}
