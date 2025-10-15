class AppAssets {
  // prevent instantiation
  AppAssets._();

  static const String arrowForward = 'assets/images/svg/arrow_forward.svg';
  static String getSubcategoryImage({required int index}) {
    return 'assets/images/png/subcategory_$index.png';
  }
}
