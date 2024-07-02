import 'package:furniture_shop/domain/models/check_out/payment_method/payment_method_model.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

List<PaymentMethodModel> paymentMethodData = [
  PaymentMethodModel(
    id: '1',
    paymentImg: ' ${FurnitureAssets.images.crediCard}',
    paymentName: 'Credi Card',
  ),
  PaymentMethodModel(
    id: '1',
    paymentImg: ' ${FurnitureAssets.images.paypal}',
    paymentName: 'Paypal',
  ),
  PaymentMethodModel(
    id: '1',
    paymentImg: ' ${FurnitureAssets.images.applePay}',
    paymentName: 'Apple Pay',
  ),
  PaymentMethodModel(
    id: '1',
    paymentImg: ' ${FurnitureAssets.images.applePay}',
    paymentName: 'All 12 Methods',
  ),
];
