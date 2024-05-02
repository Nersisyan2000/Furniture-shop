import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

// EdgeInsets, Radius, BoxConstraints, Size, Offset, SizedBox - if have not child

// EdgeInsets -----------------------------------------------------

EdgeInsets get paddingV16 => const EdgeInsets.symmetric(
      vertical: 16.0,
    );

EdgeInsets get paddingH16 => const EdgeInsets.symmetric(horizontal: 16.0);

EdgeInsets get paddingAll16 => const EdgeInsets.all(16.0);

EdgeInsets get paddingBottm8 => const EdgeInsets.only(bottom: 8.0);

EdgeInsets get paddingAll7 => const EdgeInsets.all(7.0);

// Radiuses -------------------------------------------------------

RoundedRectangleBorder get radius14 => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
    );

RoundedRectangleBorder get radius12 => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    );

BorderRadius get radius10Circular => BorderRadius.circular(10.0);

// BoxConstraints -------------------------------------------------

// Sizes ----------------------------------------------------------

// Offsets --------------------------------------------------------

// SizedBoxes -----------------------------------------------------

// Other ----------------------------------------------------------

BadgePosition get badgePosition =>
    BadgePosition.bottomEnd(end: 5.0, bottom: -2);
