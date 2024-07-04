import 'package:furniture_shop/domain/models/check_out/payment_method/payment_method_model.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

List<PaymentMethodModel> paymentMethodData = [
  PaymentMethodModel(
    id: '1',
    paymentImg: FurnitureAssets.images.crediCard.keyName,
    paymentName: 'Credi Card',
  ),
  PaymentMethodModel(
    id: '1',
    paymentImg: FurnitureAssets.images.paypal.keyName,
    paymentName: 'Paypal',
  ),
  PaymentMethodModel(
    id: '1',
    paymentImg: FurnitureAssets.images.applePay.keyName,
    paymentName: 'Apple Pay',
  ),
  PaymentMethodModel(
    id: '1',
    paymentImg: FurnitureAssets.images.applePay.keyName,
    paymentName: 'All 12 Methods',
  ),
];
