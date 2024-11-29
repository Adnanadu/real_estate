import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/themes/color_palette.dart';
import 'package:flutter_application_1/core/themes/extensions/color_extension.dart';
import 'package:flutter_application_1/core/themes/extensions/space_extension.dart';
import 'package:flutter_application_1/core/themes/extensions/typography_extension.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  extensions: [
    AppColorExtension(
      primary: AppColorPalette.blue,
      text: AppColorPalette.black,
      textInverse: AppColorPalette.white,
      textSubtle: AppColorPalette.white100,
      stars: AppColorPalette.yellow,
      bottomNavBorder: AppColorPalette.darkYellow,
      iconColor: AppColorPalette.gray,
      border: AppColorPalette.lightBlack,
      iconBackground: AppColorPalette.white100,
      successBackground: AppColorPalette.green,
      failedBackground: AppColorPalette.red,
      notification: AppColorPalette.lightGreen,
      linkText: AppColorPalette.linkBlue,
      subText: AppColorPalette.darkGray,
      container: AppColorPalette.white200,
      inputLabel: AppColorPalette.black200,
      inputText: AppColorPalette.black500,
    ),
    AppSpaceExtension.fromBaseSpace(8),
    AppTypographyExtension.fromColors(
      defaultFontColor: AppColorPalette.black,
      dimFontColor: AppColorPalette.darkGray,
    ),
  ],
);
