import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';
import 'package:furniture_uikit/src/theme/furniture_dimensions.dart';

BadgeStyle get mainBadgeStyle => BadgeStyle(
      badgeColor: Colors.green,
      // where can i write border sides ?
  /// TODO: - separate borderSide type objects into file
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      padding: paddingAll7,
    );
