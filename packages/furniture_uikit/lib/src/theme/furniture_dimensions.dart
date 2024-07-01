import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

// EdgeInsets, Radius, BoxConstraints, Size, Offset, SizedBox - if have not child

// EdgeInsets -----------------------------------------------------

EdgeInsets get paddingV16 => const EdgeInsets.symmetric(
      vertical: 16.0,
    );

EdgeInsets get paddingV8 => const EdgeInsets.symmetric(vertical: 8.0);

EdgeInsets get paddingH16 => const EdgeInsets.symmetric(horizontal: 16.0);

EdgeInsets get paddingAll16 => const EdgeInsets.all(16.0);

EdgeInsets get paddingBottm8 => const EdgeInsets.only(bottom: 8.0);

EdgeInsets get paddingAll7 => const EdgeInsets.all(7.0);

EdgeInsets get paddingL16R8 => const EdgeInsets.only(left: 16.0, right: 8.0);

EdgeInsets get paddingH4 => const EdgeInsets.symmetric(horizontal: 4.0);

EdgeInsets get paddingH12V8 =>
    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0);

// EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0);

EdgeInsets get paddingH8 => const EdgeInsets.symmetric(horizontal: 8.0);

EdgeInsets get paddingH20 => const EdgeInsets.symmetric(horizontal: 20);

EdgeInsets get paddingZero => EdgeInsets.zero;

// Radiuses -------------------------------------------------------

RoundedRectangleBorder get radius14 => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
    );

RoundedRectangleBorder get radius12 => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.r),
    );

OutlineInputBorder get outlinedRadisus12 => OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12.r),
    );

BorderRadius get radius10Circular => BorderRadius.circular(10.0);

Radius get radiusCircular4 => Radius.circular(4.0);

// BoxConstraints -------------------------------------------------
BoxConstraints get boxConstraintsH24 => const BoxConstraints(maxHeight: 24);

// Sizes ----------------------------------------------------------

// Offsets --------------------------------------------------------

// SizedBoxes -----------------------------------------------------

// Other ----------------------------------------------------------

BadgePosition get badgePosition =>
    BadgePosition.bottomEnd(end: 5.0, bottom: -2);