import 'package:flutter/material.dart';

/// Represent the typography used in the app
@immutable
class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle ui;
  final TextStyle uiSemibold;
  final TextStyle small;
  final TextStyle smallSemibold;
  final TextStyle code;
  final TextStyle h100;
  final TextStyle h200;
  final TextStyle h300;
  final TextStyle h400;
  final TextStyle h500;
  final TextStyle h600;
  final TextStyle h700;
  final TextStyle h800;
  final TextStyle h900;
  final TextStyle h1000;

  /// Create the default style values
  AppTypographyExtension.fromColors({
    required Color defaultFontColor,
    required Color dimFontColor,
  })  : ui = TextStyle(
          color: defaultFontColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0,
        ),
        uiSemibold = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          fontFamily: 'Poppins',
          letterSpacing: 0,
        ),
        small = TextStyle(
          color: dimFontColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        smallSemibold = TextStyle(
          color: dimFontColor,
          fontSize: 12,
          letterSpacing: 0,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        code = TextStyle(
          color: defaultFontColor,
          fontSize: 12,
          fontFamily: 'Poppins',
          letterSpacing: 0,
        ),
        h100 = TextStyle(
          color: dimFontColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h200 = TextStyle(
          color: dimFontColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h300 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h400 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w700,
          fontSize: 14,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h500 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h600 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h700 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w700,
          fontSize: 16,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h800 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h900 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w600,
          fontSize: 35,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        ),
        h1000 = TextStyle(
          color: defaultFontColor,
          fontWeight: FontWeight.w600,
          fontSize: 48,
          letterSpacing: 0,
          fontFamily: 'Poppins',
        );

  /// Create the typography with given styles
  const AppTypographyExtension({
    required this.ui,
    required this.uiSemibold,
    required this.small,
    required this.smallSemibold,
    required this.code,
    required this.h100,
    required this.h200,
    required this.h300,
    required this.h400,
    required this.h500,
    required this.h600,
    required this.h700,
    required this.h800,
    required this.h900,
    required this.h1000,
  });

  @override
  ThemeExtension<AppTypographyExtension> copyWith({
    TextStyle? ui,
    TextStyle? uiSemibold,
    TextStyle? small,
    TextStyle? smallSemibold,
    TextStyle? code,
    TextStyle? h100,
    TextStyle? h200,
    TextStyle? h300,
    TextStyle? h400,
    TextStyle? h500,
    TextStyle? h600,
    TextStyle? h700,
    TextStyle? h800,
    TextStyle? h900,
    TextStyle? h1000,
  }) {
    return AppTypographyExtension(
      ui: ui ?? this.ui,
      uiSemibold: uiSemibold ?? this.uiSemibold,
      small: small ?? this.small,
      smallSemibold: smallSemibold ?? this.smallSemibold,
      code: code ?? this.code,
      h100: h100 ?? this.h100,
      h200: h200 ?? this.h200,
      h300: h300 ?? this.h300,
      h400: h400 ?? this.h400,
      h500: h500 ?? this.h500,
      h600: h600 ?? this.h600,
      h700: h700 ?? this.h700,
      h800: h800 ?? this.h800,
      h900: h900 ?? this.h900,
      h1000: h1000 ?? this.h1000,
    );
  }

  @override
  ThemeExtension<AppTypographyExtension> lerp(
      covariant ThemeExtension<AppTypographyExtension>? other, double t) {
    if (other is! AppTypographyExtension) {
      return this;
    }
    return AppTypographyExtension(
      ui: TextStyle.lerp(ui, other.ui, t)!,
      uiSemibold: TextStyle.lerp(uiSemibold, other.uiSemibold, t)!,
      small: TextStyle.lerp(small, other.small, t)!,
      smallSemibold: TextStyle.lerp(smallSemibold, other.smallSemibold, t)!,
      code: TextStyle.lerp(code, other.code, t)!,
      h100: TextStyle.lerp(h100, other.h100, t)!,
      h200: TextStyle.lerp(h200, other.h200, t)!,
      h300: TextStyle.lerp(h300, other.h300, t)!,
      h400: TextStyle.lerp(h400, other.h400, t)!,
      h500: TextStyle.lerp(h500, other.h500, t)!,
      h600: TextStyle.lerp(h600, other.h600, t)!,
      h700: TextStyle.lerp(h700, other.h700, t)!,
      h800: TextStyle.lerp(h800, other.h800, t)!,
      h900: TextStyle.lerp(h900, other.h900, t)!,
      h1000: TextStyle.lerp(h1000, other.h1000, t)!,
    );
  }
}