import 'dart:ui';

import 'package:flutter/material.dart';

class AppSpaceExtension extends ThemeExtension<AppSpaceExtension> {
  final double space25;
  final double space50;
  final double space75;
  final double space100;
  final double space125;
  final double space150;
  final double space200;
  final double space250;
  final double space300;
  final double space400;
  final double space500;
  final double space600;
  final double space700;
  final double space800;
  final double space900;

  AppSpaceExtension.fromBaseSpace(double baseSpace)
      : space25 = baseSpace * 0.25,
        space50 = baseSpace * 0.5,
        space75 = baseSpace * 0.75,
        space100 = baseSpace * 1,
        space125 = baseSpace * 1.25,
        space150 = baseSpace * 1.5,
        space200 = baseSpace * 2,
        space250 = baseSpace * 2.5,
        space300 = baseSpace * 3,
        space400 = baseSpace * 4,
        space500 = baseSpace * 5,
        space600 = baseSpace * 6,
        space700 = baseSpace * 7,
        space800 = baseSpace * 8,
        space900 = baseSpace * 9;

  AppSpaceExtension({
    required this.space25,
    required this.space50,
    required this.space75,
    required this.space100,
    required this.space125,
    required this.space150,
    required this.space200,
    required this.space250,
    required this.space300,
    required this.space400,
    required this.space500,
    required this.space600,
    required this.space700,
    required this.space800,
    required this.space900,
  });

  @override
  ThemeExtension<AppSpaceExtension> copyWith({
    double? space25,
    double? space50,
    double? space75,
    double? space100,
    double? space125,
    double? space150,
    double? space200,
    double? space250,
    double? space300,
    double? space400,
    double? space500,
    double? space600,
    double? space700,
    double? space800,
    double? space900,
  }) {
    return AppSpaceExtension(
      space25: space25 ?? this.space25,
      space50: space50 ?? this.space50,
      space75: space75 ?? this.space75,
      space100: space100 ?? this.space100,
      space125: space125 ?? this.space125,
      space150: space150 ?? this.space150,
      space200: space200 ?? this.space200,
      space250: space250 ?? this.space250,
      space300: space300 ?? this.space300,
      space400: space400 ?? this.space400,
      space500: space500 ?? this.space500,
      space600: space600 ?? this.space600,
      space700: space700 ?? this.space700,
      space800: space800 ?? this.space800,
      space900: space900 ?? this.space900,
    );
  }

  @override
  ThemeExtension<AppSpaceExtension> lerp(
      covariant ThemeExtension<AppSpaceExtension>? other, double t) {
    if (other is! AppSpaceExtension) {
      return this;
    }

    return AppSpaceExtension(
      space25: lerpDouble(space25, other.space25, t)!,
      space50: lerpDouble(space50, other.space50, t)!,
      space75: lerpDouble(space75, other.space75, t)!,
      space100: lerpDouble(space100, other.space100, t)!,
      space125: lerpDouble(space125, other.space125, t)!,
      space150: lerpDouble(space150, other.space150, t)!,
      space200: lerpDouble(space200, other.space200, t)!,
      space250: lerpDouble(space250, other.space250, t)!,
      space300: lerpDouble(space300, other.space300, t)!,
      space400: lerpDouble(space400, other.space400, t)!,
      space500: lerpDouble(space500, other.space500, t)!,
      space600: lerpDouble(space600, other.space600, t)!,
      space700: lerpDouble(space700, other.space700, t)!,
      space800: lerpDouble(space800, other.space800, t)!,
      space900: lerpDouble(space900, other.space900, t)!,
    );
  }
}
