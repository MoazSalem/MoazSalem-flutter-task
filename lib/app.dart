import 'package:flutter/material.dart';
import 'package:otex/core/navigation/app_router.dart';
import 'package:otex/core/theme/app_theme.dart';
import 'package:otex/l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      title: 'Otex',
      theme: AppTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale('en'), Locale('ar')],
      routerConfig: AppRouter().router,
    );
  }
}
