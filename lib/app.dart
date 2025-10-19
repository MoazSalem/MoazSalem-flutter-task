import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otex/core/navigation/app_router.dart';
import 'package:otex/core/theme/app_theme.dart';
import 'package:otex/l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // change status bar and navigation bar color to transparent in older android versions
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // App fully supports both arabic and english languages, but i didn't implement a switch language feature
        locale: const Locale('ar'),
        title: 'Otex',
        theme: AppTheme.lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: const [Locale('en'), Locale('ar')],
        routerConfig: AppRouter().router,
      ),
    );
  }
}
