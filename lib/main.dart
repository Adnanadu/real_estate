import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/router/router.dart';
import 'package:flutter_application_1/core/themes/light_theme.dart';
import 'package:flutter_application_1/gen/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static BuildContext get context => MyApp.scaffoldMessengerKey.currentContext!;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: MyApp.scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
    );
  }
}
