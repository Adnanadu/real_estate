import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  final Color primary;
  final Color text;
  final Color textInverse;
  final Color textSubtle;
  final Color subText;
  final Color stars;
  final Color bottomNavBorder;
  final Color iconColor;
  final Color iconBackground;
  final Color successBackground;
  final Color failedBackground;
  final Color notification;
  final Color linkText;
  final Color border;
  final Color container;
  final Color inputLabel;
  final Color inputText;

  AppColorExtension({
    required this.primary,
    required this.text,
    required this.textInverse,
    required this.textSubtle,
    required this.stars,
    required this.bottomNavBorder,
    required this.iconColor,
    required this.border,
    required this.iconBackground,
    required this.successBackground,
    required this.failedBackground,
    required this.notification,
    required this.linkText,
    required this.subText,
    required this.container,
    required this.inputLabel,
    required this.inputText,
  });

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? primary,
    Color? text,
    Color? textInverse,
    Color? textSubtle,
    Color? stars,
    Color? bottomNavBorder,
    Color? iconColor,
    Color? border,
    Color? iconBackground,
    Color? successBackground,
    Color? failedBackground,
    Color? notification,
    Color? linkText,
    Color? subText,
    Color? container,
    Color? inputLabel,
    Color? inputText,
  }) {
    return AppColorExtension(
      primary: primary ?? this.primary,
      text: text ?? this.text,
      textInverse: textInverse ?? this.textInverse,
      textSubtle: textSubtle ?? this.textSubtle,
      stars: stars ?? this.stars,
      bottomNavBorder: bottomNavBorder ?? this.bottomNavBorder,
      iconColor: iconColor ?? this.iconColor,
      border: border ?? this.border,
      iconBackground: iconBackground ?? this.iconBackground,
      successBackground: successBackground ?? this.successBackground,
      failedBackground: failedBackground ?? this.failedBackground,
      notification: notification ?? this.notification,
      linkText: linkText ?? this.linkText,
      subText: subText ?? this.subText,
      container: container ?? this.container,
      inputLabel: inputLabel ?? this.inputLabel,
      inputText: inputText ?? this.inputText,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }

    return AppColorExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      text: Color.lerp(text, other.text, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
      textSubtle: Color.lerp(textSubtle, other.textSubtle, t)!,
      stars: Color.lerp(stars, other.stars, t)!,
      bottomNavBorder: Color.lerp(bottomNavBorder, other.bottomNavBorder, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      border: Color.lerp(border, other.border, t)!,
      iconBackground: Color.lerp(iconBackground, other.iconBackground, t)!,
      successBackground:
          Color.lerp(successBackground, other.successBackground, t)!,
      failedBackground:
          Color.lerp(failedBackground, other.failedBackground, t)!,
      notification: Color.lerp(notification, other.notification, t)!,
      linkText: Color.lerp(linkText, other.linkText, t)!,
      subText: Color.lerp(subText, other.subText, t)!,
      container: Color.lerp(container, other.container, t)!,
      inputLabel: Color.lerp(inputLabel, other.inputLabel, t)!,
      inputText: Color.lerp(inputText, other.inputText, t)!,
    );
  }
}
