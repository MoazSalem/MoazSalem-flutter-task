import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @explore_deals.
  ///
  /// In en, this message translates to:
  /// **'Explore Deals'**
  String get explore_deals;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @free_shipping.
  ///
  /// In en, this message translates to:
  /// **'Free Shipping'**
  String get free_shipping;

  /// No description provided for @for_any_offer.
  ///
  /// In en, this message translates to:
  /// **'For Any Offer You Order Right Now !'**
  String get for_any_offer;

  /// No description provided for @sold_over.
  ///
  /// In en, this message translates to:
  /// **'Sold Over'**
  String get sold_over;

  /// No description provided for @egp.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get egp;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @add_ad.
  ///
  /// In en, this message translates to:
  /// **'Add Ad'**
  String get add_ad;

  /// No description provided for @my_ads.
  ///
  /// In en, this message translates to:
  /// **'My Ads'**
  String get my_ads;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @bt_default.
  ///
  /// In en, this message translates to:
  /// **'Back to Default'**
  String get bt_default;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @real_estate.
  ///
  /// In en, this message translates to:
  /// **'Real Estate'**
  String get real_estate;

  /// No description provided for @villa_s.
  ///
  /// In en, this message translates to:
  /// **'Villas for Sale'**
  String get villa_s;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @egypt.
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get egypt;

  /// No description provided for @month_install.
  ///
  /// In en, this message translates to:
  /// **'Month Installments'**
  String get month_install;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @any.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get any;

  /// No description provided for @twin_house.
  ///
  /// In en, this message translates to:
  /// **'Twin House'**
  String get twin_house;

  /// No description provided for @separate_villa.
  ///
  /// In en, this message translates to:
  /// **'Separate Villa'**
  String get separate_villa;

  /// No description provided for @town_house.
  ///
  /// In en, this message translates to:
  /// **'Town House'**
  String get town_house;

  /// No description provided for @num_rooms.
  ///
  /// In en, this message translates to:
  /// **'Number of Rooms'**
  String get num_rooms;

  /// No description provided for @more_than_5.
  ///
  /// In en, this message translates to:
  /// **'5+ Rooms'**
  String get more_than_5;

  /// No description provided for @two_rooms.
  ///
  /// In en, this message translates to:
  /// **'2 Rooms'**
  String get two_rooms;

  /// No description provided for @rooms.
  ///
  /// In en, this message translates to:
  /// **'{numOfRooms} Rooms'**
  String rooms(int numOfRooms);

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @lowest_price.
  ///
  /// In en, this message translates to:
  /// **'Lowest Price'**
  String get lowest_price;

  /// No description provided for @highest_price.
  ///
  /// In en, this message translates to:
  /// **'Highest Price'**
  String get highest_price;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @installments.
  ///
  /// In en, this message translates to:
  /// **'Installments'**
  String get installments;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @estate_state.
  ///
  /// In en, this message translates to:
  /// **'Estate State'**
  String get estate_state;

  /// No description provided for @ready.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get ready;

  /// No description provided for @under_const.
  ///
  /// In en, this message translates to:
  /// **'Under Construction'**
  String get under_const;

  /// No description provided for @watch_results.
  ///
  /// In en, this message translates to:
  /// **'Watch {numOfResults}+ Result'**
  String watch_results(String numOfResults);

  /// No description provided for @choose_plans.
  ///
  /// In en, this message translates to:
  /// **'Choose the Plans that Suit You'**
  String get choose_plans;

  /// No description provided for @choose_from_bellow.
  ///
  /// In en, this message translates to:
  /// **'Choose the distinction plans that suit you from below'**
  String get choose_from_bellow;

  /// No description provided for @p_basic.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get p_basic;

  /// No description provided for @p_extra.
  ///
  /// In en, this message translates to:
  /// **'Extra'**
  String get p_extra;

  /// No description provided for @p_plus.
  ///
  /// In en, this message translates to:
  /// **'Plus'**
  String get p_plus;

  /// No description provided for @p_super.
  ///
  /// In en, this message translates to:
  /// **'Super'**
  String get p_super;

  /// No description provided for @highest_views.
  ///
  /// In en, this message translates to:
  /// **'Highest Views'**
  String get highest_views;

  /// No description provided for @best_value.
  ///
  /// In en, this message translates to:
  /// **'Best Value for Money'**
  String get best_value;

  /// No description provided for @in_48_hours.
  ///
  /// In en, this message translates to:
  /// **'In the Upcoming 48 Hours'**
  String get in_48_hours;

  /// No description provided for @time_the_views.
  ///
  /// In en, this message translates to:
  /// **'Times The Views'**
  String get time_the_views;

  /// No description provided for @perk_0.
  ///
  /// In en, this message translates to:
  /// **'Ad valid for 30 days'**
  String get perk_0;

  /// No description provided for @perk_1.
  ///
  /// In en, this message translates to:
  /// **'Raise to the top of the list every 2 days'**
  String get perk_1;

  /// No description provided for @perk_2.
  ///
  /// In en, this message translates to:
  /// **'Pinned in a sanitary contractor'**
  String get perk_2;

  /// No description provided for @perk_3.
  ///
  /// In en, this message translates to:
  /// **'Appears in all governorates of Egypt'**
  String get perk_3;

  /// No description provided for @perk_4.
  ///
  /// In en, this message translates to:
  /// **'Featured Ad'**
  String get perk_4;

  /// No description provided for @perk_5.
  ///
  /// In en, this message translates to:
  /// **'Pinned in a sanitary contractor in Jahra'**
  String get perk_5;

  /// No description provided for @perk_6.
  ///
  /// In en, this message translates to:
  /// **'Pinned in a sanitary contractor'**
  String get perk_6;

  /// No description provided for @plans_for_you.
  ///
  /// In en, this message translates to:
  /// **'Plans Just for You'**
  String get plans_for_you;

  /// No description provided for @contact_us.
  ///
  /// In en, this message translates to:
  /// **'Contact Us to choose the plan that suits you'**
  String get contact_us;

  /// No description provided for @sales_team.
  ///
  /// In en, this message translates to:
  /// **'Sales Team'**
  String get sales_team;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @jacket.
  ///
  /// In en, this message translates to:
  /// **'Jacket from Sheepskin Suitable'**
  String get jacket;

  /// No description provided for @no_results_found.
  ///
  /// In en, this message translates to:
  /// **'No Results Found'**
  String get no_results_found;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpected_error;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
