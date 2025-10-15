import 'package:flutter/material.dart';
import 'package:otex/app/main_screen.dart';
import 'package:otex/core/theme/app_theme.dart';
import 'package:otex/l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      title: 'Otex',
      theme: AppTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale('en'), Locale('ar')],
      home: MainScreen(),
    );
  }
}
