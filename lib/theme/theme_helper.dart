import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.tealA100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray200,
      ),
    );
  }

  LightCodeColors themeColor() => _getThemeColors();
  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 15,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 8,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 10,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 14,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        ),
      );
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF353746),
    primaryContainer: Color(0XFFC4C4C4),
    secondaryContainer: Color(0XFF363746),
    errorContainer: Color(0XFF794A89),
    onError: Color(0XFF2F2F2F),
    onErrorContainer: Color(0XFF181818),
    onPrimary: Color(0X9EFFFFFF),
    onPrimaryContainer: Color(0XFF1D1D28),
  );
}

class LightCodeColors {
  Color get black900 => Color(0XFF000000);
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray200 => Color(0XFFB6BACD);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF252836);
  Color get blueGray90001 => Color(0XFF333542);
  Color get blueGray90002 => Color(0XFF34353E);
  Color get cyan200 => Color(0XFF95E4EC);
  Color get cyanA400 => Color(0XFF00E8FE);
  Color get gray100 => Color(0XFFF7F7F7);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray5001 => Color(0XFFFBFBFB);
  Color get gray5002 => Color(0XFFF8F8F8);
  Color get gray600 => Color(0XFF787983);
  Color get gray800 => Color(0XFF353645);
  Color get gray80001 => Color(0XFF363740);
  Color get orange600 => Color(0XFFFF8900);
  Color get tealA100 => Color(0XFFA1F7FF);
  Color get whiteA700 => Color(0XFFFDFDFD);
  Color get yellowA200 => Color(0XFFFFFF00);
}
