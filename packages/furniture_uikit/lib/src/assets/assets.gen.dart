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

  /// File path: assets/icons/arrow_back.svg
  SvgGenImage get arrowBack => const SvgGenImage('assets/icons/arrow_back.svg');

  /// File path: assets/icons/call.svg
  SvgGenImage get call => const SvgGenImage('assets/icons/call.svg');

  /// File path: assets/icons/cart.svg
  SvgGenImage get cart => const SvgGenImage('assets/icons/cart.svg');

  /// File path: assets/icons/direction_right 3.svg
  SvgGenImage get directionRight3 => const SvgGenImage('assets/icons/direction_right 3.svg');

  /// File path: assets/icons/eye_scanner.svg
  SvgGenImage get eyeScanner => const SvgGenImage('assets/icons/eye_scanner.svg');

  /// File path: assets/icons/filter_icon.svg
  SvgGenImage get filterIcon => const SvgGenImage('assets/icons/filter_icon.svg');

  /// File path: assets/icons/frame.svg
  SvgGenImage get frame => const SvgGenImage('assets/icons/frame.svg');

  /// File path: assets/icons/google_icon.svg
  SvgGenImage get googleIcon => const SvgGenImage('assets/icons/google_icon.svg');

  /// File path: assets/icons/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/icons/heart.svg');

  /// File path: assets/icons/hearth_icon.svg
  SvgGenImage get hearthIcon => const SvgGenImage('assets/icons/hearth_icon.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/minusIcon.svg
  SvgGenImage get minusIcon => const SvgGenImage('assets/icons/minusIcon.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification => const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/plusIcon.svg
  SvgGenImage get plusIcon => const SvgGenImage('assets/icons/plusIcon.svg');

  /// File path: assets/icons/search_icon.svg
  SvgGenImage get searchIcon => const SvgGenImage('assets/icons/search_icon.svg');

  /// File path: assets/icons/seen_people_icon.svg
  SvgGenImage get seenPeopleIcon => const SvgGenImage('assets/icons/seen_people_icon.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowBack,
        call,
        cart,
        directionRight3,
        eyeScanner,
        filterIcon,
        frame,
        googleIcon,
        heart,
        hearthIcon,
        home,
        minusIcon,
        notification,
        plusIcon,
        searchIcon,
        seenPeopleIcon,
        user
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/onboarding_circle_img.png
  AssetGenImage get onboardingCircleImg =>
      const AssetGenImage('assets/images/onboarding_circle_img.png');

  /// File path: assets/images/onboarding_first_img.png
  AssetGenImage get onboardingFirstImg =>
      const AssetGenImage('assets/images/onboarding_first_img.png');

  /// File path: assets/images/project-logo.svg
  SvgGenImage get projectLogo => const SvgGenImage('assets/images/project-logo.svg');

  /// List of all assets
  List<dynamic> get values => [onboardingCircleImg, onboardingFirstImg, projectLogo];
}

class FurnitureAssets {
  FurnitureAssets._();

  static const String package = 'furniture_uikit';

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  static const String package = 'furniture_uikit';

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset') String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset') String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/furniture_uikit/$_assetName';
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
