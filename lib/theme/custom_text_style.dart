import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension CustomTextStyleExtension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyMediumPoppinsOnPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.79),
        fontSize: 14,
      );

  static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10,
      );

  static TextStyle get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12,
      );

  static TextStyle get bodySmallBluegray200 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 12,
      );

  static TextStyle get bodySmallGray5002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5002,
        fontSize: 12,
      );

  static TextStyle get bodySmallOnPrimary =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.44),
        fontSize: 12,
      );

  static TextStyle get bodySmallOnPrimary11 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.79),
        fontSize: 11,
      );

  static TextStyle get bodySmallOnPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12,
      );

  static TextStyle get bodySmallTealA100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA100,
        fontSize: 11,
      );

  // Headline text style
  static TextStyle get headlineSmallOnPrimary =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w800,
      );

  // Label text style
  static TextStyle get labelLargeBlack900 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelLargeBluegray200 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 13,
      );

  static TextStyle get labelLargeBold =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get labelLargeGray100 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
        fontSize: 13,
      );

  static TextStyle get labelLargeGray5002 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5002,
        fontSize: 13,
      );

  static TextStyle get labelLargeOnErrorContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13,
      );

  static TextStyle get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 13,
      );

  static TextStyle get labelLargeOnPrimaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelLargePrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13,
      );

  static TextStyle get labelMediumGray600 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 11,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelMediumOnPrimary =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.64),
      );

  static TextStyle get labelMediumSemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w600,
      );

  // Title text style
  static TextStyle get titleMediumExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w800,
      );

  static TextStyle get titleMediumGray600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumMedium =>
      theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static TextStyle get titleMediumSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumWhiteA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallBold =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get titleSmallPoppins =>
      theme.textTheme.titleSmall!.poppins.copyWith(fontWeight: FontWeight.w700);

  static TextStyle get titleSmallPoppinsGray5001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray5001,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleSmallPoppinsOnPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPoppinsWhiteA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
}
