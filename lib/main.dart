import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/model/theme_model.dart';
import 'package:flutter_application_1/core/router/router.dart';
import 'package:flutter_application_1/core/themes/dark_theme.dart';
import 'package:flutter_application_1/core/themes/light_theme.dart';
import 'package:flutter_application_1/gen/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// The ThemeNotifier is a StateNotifier that manages the theme mode of the app.
// final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
//   return ThemeNotifier();
// });

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static BuildContext get context => MyApp.scaffoldMessengerKey.currentContext!;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// The themeMode is read from the provider.
    final themeMode =
        ref.watch(themeProvider); // Read the theme mode from the provider
    return MaterialApp.router(
      scaffoldMessengerKey: MyApp.scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
    );
  }
}
