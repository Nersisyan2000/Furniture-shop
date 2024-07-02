import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class ShippingAddressCard extends StatefulWidget {
  const ShippingAddressCard({
    super.key,

    required this.title,
    required this.shippingAddress,
    required this.phone,
  });


  final String title;
  final String shippingAddress;
  final String phone;

  @override
  State<ShippingAddressCard> createState() => _ShippingAddressCardState();
}
enum SingingCharacter { lafayette, jefferson }
class _ShippingAddressCardState extends State<ShippingAddressCard> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: FurnitureColors.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: switzer16SemiboldTextStyle,
              ),
              Text(
                widget.phone,
                style: switzer13RegularTextStyle.copyWith(
                  color: FurnitureColors.subTextColor,
                ),
              ),
              Text(
                widget.shippingAddress,
                style: switzer16MediumTextStyle.copyWith(
                  color: FurnitureColors.subTextColor,
                ),
              ),
            ],
          ).paddingOnly(
            left: 12.w,
          ),
          FurnitureIconButton.whiteMode(
            icon: FurnitureAssets.icons.edit.svg(
              color: Colors.black,
            ),
            onTap: () {},
          )
        ],
      ).paddingAll(
        16.w,
      ),
    ).paddingSymmetric(horizontal: 16.0,vertical: 8.0);
  }
}
