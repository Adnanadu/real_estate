import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get text {
    return AppLocalizations.of(this)!;
  }
}
