import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodySmallBluegray10001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPoppinsWhiteA700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
// Label text style
  static get labelLargePoppinsRed900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.red900,
      );
  static get labelMediumRed900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red900,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelSmallInter => theme.textTheme.labelSmall!.inter;
  static get labelSmallRed900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red900,
      );
// Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).poppins;
  static get poppinsLightgreen800 => TextStyle(
        color: appTheme.lightGreen800,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
}
