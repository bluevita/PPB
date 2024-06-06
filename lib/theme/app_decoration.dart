import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );

  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );

  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan200,
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );

  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );

  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA100.withOpacity(0.91),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray800,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.18),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 3.51),
          ),
        ],
      );

  static BoxDecoration get outlineBlack900 => BoxDecoration();

  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.gray800,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get outlineBlack9003 => BoxDecoration();

  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(color: appTheme.blueGray100, width: 1.h),
      );

  static BoxDecoration get outlineCyanA => BoxDecoration(
        color: appTheme.blueGray90001,
        border: Border.all(color: appTheme.cyanA400, width: 1.h),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(20.h);

  // Rounded borders
  static BorderRadius get roundedBorder13 => BorderRadius.circular(13.h);

  static BorderRadius get roundedBorder24 => BorderRadius.circular(24.h);

  static BorderRadius get roundedBorder30 => BorderRadius.circular(30.h);

  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.h);

  static BorderRadius get roundedBorder8 => BorderRadius.circular(8.h);
}
