import 'package:flutter/cupertino.dart';
import 'package:otex/l10n/app_localizations.dart';

class TranslationsHelper {
  const TranslationsHelper._();

  static String getTranslation(BuildContext context, String key) {
    final locale = AppLocalizations.of(context)!;
    switch (key) {
      default:
        return locale.jacket;
    }
  }
}
