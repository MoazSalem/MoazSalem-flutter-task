class AppAssets {
  // prevent instantiation
  AppAssets._();

  static const String arrowForward = 'assets/images/svg/arrow_forward.svg';
  static const String check = 'assets/images/svg/check.svg';
  static const String discount = 'assets/images/svg/discount.svg';
  static const String favorite = 'assets/images/svg/favorite.svg';
  static const String fire = 'assets/images/svg/fire.svg';
  static const String companyBadge = 'assets/images/svg/company_badge.svg';
  static const String addToCart = 'assets/images/svg/add_to_cart.svg';
  static const String sellerIcon = 'assets/images/png/seller_0.png';

  static String getSubcategoryImage({required int index}) {
    return 'assets/images/png/subcategory_$index.png';
  }

  static String getAdImage({required int index}) {
    return 'assets/images/png/ad_$index.png';
  }
}
