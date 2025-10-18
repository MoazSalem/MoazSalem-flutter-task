class AppAssets {
  // prevent instantiation
  AppAssets._();

  static const String arrowForward = 'assets/images/svg/arrow_forward.svg';
  static const String arrowForward2 = 'assets/images/svg/arrow_forward_2.svg';
  static const String check = 'assets/images/svg/check.svg';
  static const String discount = 'assets/images/svg/discount.svg';
  static const String favorite = 'assets/images/svg/favorite.svg';
  static const String favoriteFilled = 'assets/images/svg/favorite_filled.svg';
  static const String fire = 'assets/images/svg/fire.svg';
  static const String companyBadge = 'assets/images/svg/company_badge.svg';
  static const String addToCart = 'assets/images/svg/add_to_cart.svg';
  static const String sellerIcon = 'assets/images/png/seller_0.png';
  static const String home = 'assets/images/svg/home.svg';
  static const String chat = 'assets/images/svg/chat.svg';
  static const String add = 'assets/images/svg/add.svg';
  static const String myAds = 'assets/images/svg/my_ads.svg';
  static const String account = 'assets/images/svg/account.svg';
  static const String close = 'assets/images/svg/close.svg';
  static const String location = 'assets/images/svg/location.svg';
  static const String realEstate = 'assets/images/svg/real_estate.svg';
  static const String perkTime = 'assets/images/svg/perk_time.svg';
  static const String perkRocket = 'assets/images/svg/perk_rocket.svg';
  static const String perkPin = 'assets/images/svg/perk_pin.svg';
  static const String perkGlobe = 'assets/images/svg/perk_globe.svg';
  static const String perkSpecial = 'assets/images/svg/perk_special.svg';

  static String getSubcategoryImage({required int index}) {
    return 'assets/images/png/subcategory_$index.png';
  }

  static String getAdImage({required int index}) {
    return 'assets/images/png/ad_$index.png';
  }

  static String getPerkIcon({required int index}) {
    switch (index) {
      case 0:
        return perkTime;
      case 1:
        return perkRocket;
      case 2:
        return perkPin;
      case 3:
        return perkGlobe;
      case 4:
        return perkSpecial;
      default:
        return perkPin;
    }
  }
}
