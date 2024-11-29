import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/extension/theme_extension.dart';
import 'package:flutter_application_1/main.dart';
class SnackbarUtils {
  static void showMassage(String massages) {
    MyApp.scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        backgroundColor: MyApp.context.colors.primary,
        content: Center(
          child: Text(
            massages,
            style: MyApp.context.typography.h600.copyWith(
              color: MyApp.context.colors.textInverse,
            ),
          ),
        ),
      ),
    );
  }
}