import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../data/local/check_out_data/payment_method_data/payment_method_data.dart';

class PaymentMethodListTile extends StatefulWidget {
  const PaymentMethodListTile({
    super.key,
    required this.paymentImg,
    required this.paymentName,
  });

  final String paymentImg;
  final String paymentName;

  @override
  State<PaymentMethodListTile> createState() => _PaymentMethodListTileState();
}

enum SingingCharacter { lafayette, jefferson }

class _PaymentMethodListTileState extends State<PaymentMethodListTile> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Text(widget.paymentImg),
          title: Text(widget.paymentName),
          trailing: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        )
      ],
    );
  }
}
