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

  /// File path: assets/fonts/Inter-Black.otf
  String get interBlack => 'packages/furniture_uikit/assets/fonts/Inter-Black.otf';

  /// File path: assets/fonts/Inter-BlackItalic.otf
  String get interBlackItalic => 'packages/furniture_uikit/assets/fonts/Inter-BlackItalic.otf';

  /// File path: assets/fonts/Inter-Bold.otf
  String get interBold => 'packages/furniture_uikit/assets/fonts/Inter-Bold.otf';

  /// File path: assets/fonts/Inter-BoldItalic.otf
  String get interBoldItalic => 'packages/furniture_uikit/assets/fonts/Inter-BoldItalic.otf';

  /// File path: assets/fonts/Inter-ExtraBold.otf
  String get interExtraBold => 'packages/furniture_uikit/assets/fonts/Inter-ExtraBold.otf';

  /// File path: assets/fonts/Inter-ExtraBoldItalic.otf
  String get interExtraBoldItalic =>
      'packages/furniture_uikit/assets/fonts/Inter-ExtraBoldItalic.otf';

  /// File path: assets/fonts/Inter-ExtraLight.otf
  String get interExtraLight => 'packages/furniture_uikit/assets/fonts/Inter-ExtraLight.otf';

  /// File path: assets/fonts/Inter-ExtraLightItalic.otf
  String get interExtraLightItalic =>
      'packages/furniture_uikit/assets/fonts/Inter-ExtraLightItalic.otf';

  /// File path: assets/fonts/Inter-Italic.otf
  String get interItalic => 'packages/furniture_uikit/assets/fonts/Inter-Italic.otf';

  /// File path: assets/fonts/Inter-Light.otf
  String get interLight => 'packages/furniture_uikit/assets/fonts/Inter-Light.otf';

  /// File path: assets/fonts/Inter-LightItalic.otf
  String get interLightItalic => 'packages/furniture_uikit/assets/fonts/Inter-LightItalic.otf';

  /// File path: assets/fonts/Inter-Medium.otf
  String get interMedium => 'packages/furniture_uikit/assets/fonts/Inter-Medium.otf';

  /// File path: assets/fonts/Inter-MediumItalic.otf
  String get interMediumItalic => 'packages/furniture_uikit/assets/fonts/Inter-MediumItalic.otf';

  /// File path: assets/fonts/Inter-Regular.otf
  String get interRegular => 'packages/furniture_uikit/assets/fonts/Inter-Regular.otf';

  /// File path: assets/fonts/Inter-SemiBold.otf
  String get interSemiBold => 'packages/furniture_uikit/assets/fonts/Inter-SemiBold.otf';

  /// File path: assets/fonts/Inter-SemiBoldItalic.otf
  String get interSemiBoldItalic =>
      'packages/furniture_uikit/assets/fonts/Inter-SemiBoldItalic.otf';

  /// File path: assets/fonts/Inter-Thin.otf
  String get interThin => 'packages/furniture_uikit/assets/fonts/Inter-Thin.otf';

  /// File path: assets/fonts/Inter-ThinItalic.otf
  String get interThinItalic => 'packages/furniture_uikit/assets/fonts/Inter-ThinItalic.otf';

  /// File path: assets/fonts/Inter-V.ttf
  String get interV => 'packages/furniture_uikit/assets/fonts/Inter-V.ttf';

  /// List of all assets
  List<String> get values => [
        interBlack,
        interBlackItalic,
        interBold,
        interBoldItalic,
        interExtraBold,
        interExtraBoldItalic,
        interExtraLight,
        interExtraLightItalic,
        interItalic,
        interLight,
        interLightItalic,
        interMedium,
        interMediumItalic,
        interRegular,
        interSemiBold,
        interSemiBoldItalic,
        interThin,
        interThinItalic,
        interV
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/direction-right 3.svg
  SvgGenImage get directionRight3 => const SvgGenImage('assets/icons/direction-right 3.svg');

  /// List of all assets
  List<SvgGenImage> get values => [directionRight3];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Rectangle 4242.png
  AssetGenImage get rectangle4242 => const AssetGenImage('assets/images/Rectangle 4242.png');

  /// List of all assets
  List<AssetGenImage> get values => [rectangle4242];
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
