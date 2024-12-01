// controllers/theme_controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/model/theme_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeController {
  final WidgetRef ref;

  ThemeController(this.ref);

  bool isDarkMode() {
    return ref.read(themeProvider) == ThemeMode.dark;
  }

  void setLightTheme() {
    ref.read(themeProvider.notifier).setLightTheme();
  }

  void setDarkTheme() {
    ref.read(themeProvider.notifier).setDarkTheme();
  }

  void setSystemTheme() {
    ref.read(themeProvider.notifier).setSystemTheme();
  }

  void toggleTheme() {
    ref.read(themeProvider.notifier).toggleTheme();
  }
}
