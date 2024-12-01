// models/theme_model.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeModel extends StateNotifier<ThemeMode> {
  ThemeModel() : super(ThemeMode.system); // Default to system theme

  void setLightTheme() {
    state = ThemeMode.light;
  }

  void setDarkTheme() {
    state = ThemeMode.dark;
  }

  void setSystemTheme() {
    state = ThemeMode.system;
  }

  void toggleTheme() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}

final themeProvider = StateNotifierProvider<ThemeModel, ThemeMode>((ref) {
  return ThemeModel();
});
