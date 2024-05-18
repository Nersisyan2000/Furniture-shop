import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

// EdgeInsets, Radius, BoxConstraints, Size, Offset, SizedBox - if have not child

// EdgeInsets -----------------------------------------------------

EdgeInsets get paddingV16 => const EdgeInsets.symmetric(
      vertical: 16.0,
    );

EdgeInsets get paddingV8 => EdgeInsets.symmetric(vertical: 8.h);

EdgeInsets get paddingH16 => EdgeInsets.symmetric(horizontal: 16.w);

EdgeInsets get paddingAll16 => const EdgeInsets.all(16.0);

EdgeInsets get paddingBottm8 => EdgeInsets.only(bottom: 8.h);

EdgeInsets get paddingAll7 => const EdgeInsets.all(7.0);

EdgeInsets get paddingL16R8 => EdgeInsets.only(left: 16.w, right: 8.w);

EdgeInsets get paddingH4 => EdgeInsets.symmetric(horizontal: 4.w);

EdgeInsets get paddingH12V8 =>
    EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h);

EdgeInsets get paddingH8 => EdgeInsets.symmetric(horizontal: 8.w);

// Radiuses -------------------------------------------------------

RoundedRectangleBorder get radius14 => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.r),
    );

RoundedRectangleBorder get radius12 => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.r),
    );

OutlineInputBorder get outlinedRadisus12 => OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12.r),
    );

BorderRadius get radius10Circular => BorderRadius.circular(10.r);

Radius get radiusCircular4 => Radius.circular(4.r);

// BoxConstraints -------------------------------------------------

// Sizes ----------------------------------------------------------

// Offsets --------------------------------------------------------

// SizedBoxes -----------------------------------------------------

// Other ----------------------------------------------------------

BadgePosition get badgePosition =>
    BadgePosition.bottomEnd(end: 5.0, bottom: -2);
