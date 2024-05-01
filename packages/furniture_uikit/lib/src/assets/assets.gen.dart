/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Switzer-Black.otf
  String get switzerBlack => 'packages/furniture_uikit/assets/fonts/Switzer-Black.otf';

  /// File path: assets/fonts/Switzer-Bold.otf
  String get switzerBold => 'packages/furniture_uikit/assets/fonts/Switzer-Bold.otf';

  /// File path: assets/fonts/Switzer-Extrabold.otf
  String get switzerExtrabold => 'packages/furniture_uikit/assets/fonts/Switzer-Extrabold.otf';

  /// File path: assets/fonts/Switzer-Extralight.otf
  String get switzerExtralight => 'packages/furniture_uikit/assets/fonts/Switzer-Extralight.otf';

  /// File path: assets/fonts/Switzer-Light.otf
  String get switzerLight => 'packages/furniture_uikit/assets/fonts/Switzer-Light.otf';

  /// File path: assets/fonts/Switzer-Medium.otf
  String get switzerMedium => 'packages/furniture_uikit/assets/fonts/Switzer-Medium.otf';

  /// File path: assets/fonts/Switzer-Regular.otf
  String get switzerRegular => 'packages/furniture_uikit/assets/fonts/Switzer-Regular.otf';

  /// File path: assets/fonts/Switzer-Semibold.otf
  String get switzerSemibold => 'packages/furniture_uikit/assets/fonts/Switzer-Semibold.otf';

  /// File path: assets/fonts/Switzer-Thin.otf
  String get switzerThin => 'packages/furniture_uikit/assets/fonts/Switzer-Thin.otf';

  /// File path: assets/fonts/Switzer-ThinItalic.otf
  String get switzerThinItalic => 'packages/furniture_uikit/assets/fonts/Switzer-ThinItalic.otf';

  /// List of all assets
  List<String> get values => [
        switzerBlack,
        switzerBold,
        switzerExtrabold,
        switzerExtralight,
        switzerLight,
        switzerMedium,
        switzerRegular,
        switzerSemibold,
        switzerThin,
        switzerThinItalic
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow-back.svg
  SvgGenImage get arrowBack => const SvgGenImage('assets/icons/arrow-back.svg');

  /// File path: assets/icons/call.svg
  SvgGenImage get call => const SvgGenImage('assets/icons/call.svg');

  /// File path: assets/icons/direction-right 3.svg
  SvgGenImage get directionRight3 => const SvgGenImage('assets/icons/direction-right 3.svg');

  /// File path: assets/icons/frame.svg
  SvgGenImage get frame => const SvgGenImage('assets/icons/frame.svg');

  /// File path: assets/icons/google-icon.svg
  SvgGenImage get googleIcon => const SvgGenImage('assets/icons/google-icon.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification => const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [arrowBack, call, directionRight3, frame, googleIcon, notification, search];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/carousel-background-img.svg
  SvgGenImage get carouselBackgroundImg =>
      const SvgGenImage('assets/images/carousel-background-img.svg');

  /// File path: assets/images/project-logo.svg
  SvgGenImage get projectLogo => const SvgGenImage('assets/images/project-logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [carouselBackgroundImg, projectLogo];
}

class FurnitureAssets {
  FurnitureAssets._();

  static const String package = 'furniture_uikit';

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  static const String package = 'furniture_uikit';

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset') String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/furniture_uikit/$_assetName';
}
