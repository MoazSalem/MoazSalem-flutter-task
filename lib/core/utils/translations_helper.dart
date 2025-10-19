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
      case "basic":
        return locale.p_basic;
      case "extra":
        return locale.p_extra;
      case "plus":
        return locale.p_plus;
      case "super":
        return locale.p_super;
      case "perk_0":
        return locale.perk_0;
      case "perk_1":
        return locale.perk_1;
      case "perk_2":
        return locale.perk_2;
      case "perk_3":
        return locale.perk_3;
      case "perk_4":
        return locale.perk_4;
      case "perk_5":
        return locale.perk_5;
      case "perk_6":
        return locale.perk_6;
      default:
        return locale.jacket;
    }
  }
}
