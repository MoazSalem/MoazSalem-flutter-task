import 'package:flutter/cupertino.dart';
import 'package:otex/l10n/app_localizations.dart';

class TranslationsHelper {
  const TranslationsHelper._();

  static String getTranslation(BuildContext context, String key) {
    final locale = AppLocalizations.of(context)!;
    switch (key) {
      case "all_deals":
        return locale.all_deals;
      case "clothing":
        return locale.clothing;
      case "accessories":
        return locale.accessories;
      case "electronics":
        return locale.electronics;
      case "fashion":
        return locale.fashion;
      case "real_estate":
        return locale.real_estate;
      case "men_fashion":
        return locale.men_fashion;
      case "watches":
        return locale.watches;
      case "smartphones":
        return locale.smartphones;
      case "makeup":
        return locale.makeup;
      case "villas":
        return locale.villas;
      case "jacket":
        return locale.jacket;
      default:
        return locale.jacket;
    }
  }
}
