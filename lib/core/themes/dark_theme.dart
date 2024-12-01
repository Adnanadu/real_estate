import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/themes/color_palette.dart';
import 'package:flutter_application_1/core/themes/extensions/color_extension.dart';
import 'package:flutter_application_1/core/themes/extensions/space_extension.dart';
import 'package:flutter_application_1/core/themes/extensions/typography_extension.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  extensions: [
    AppColorExtension(
      primary: AppColorPalette.blue,
      text: AppColorPalette.white,
      textInverse: AppColorPalette.black,
      textSubtle: AppColorPalette.black200,
      stars: AppColorPalette.yellow,
      bottomNavBorder: AppColorPalette.black200,
      iconColor: AppColorPalette.white,
      border: AppColorPalette.white,
      iconBackground: AppColorPalette.black200,
      successBackground: AppColorPalette.green,
      failedBackground: AppColorPalette.red,
      notification: AppColorPalette.green,
      linkText: AppColorPalette.linkBlue,
      subText: AppColorPalette.white200,
      container: AppColorPalette.black200,
      inputLabel: AppColorPalette.white200,
      inputText: AppColorPalette.white,
    ),
    AppSpaceExtension.fromBaseSpace(8),
    AppTypographyExtension.fromColors(
      defaultFontColor: AppColorPalette.white,
      dimFontColor: AppColorPalette.white200,
    ),
  ],
);
