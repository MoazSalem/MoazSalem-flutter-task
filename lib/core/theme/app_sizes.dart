import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes {
  // prevent instantiation
  AppSizes._();

  // Paddings
  static double get p4 => 4.sp.clamp(4, 6);
  static double get p8 => 8.sp.clamp(8, 10);
  static double get p12 => 12.sp.clamp(12, 14);
  static double get p16 => 16.sp.clamp(16, 20);
  static double get p18 => 18.sp.clamp(18, 22);
  static double get p20 => 20.sp.clamp(20, 24);
  static double get p24 => 24.sp.clamp(24, 28);
  static double get p40 => 40.sp.clamp(40, 44);

  static const double smallRoundedCorner = 4;
  static const double borderWidth = 1;
  static const double toolbarHeight = 100;
  static const double categoryBarHeight = 40;
  static const double categoryBarPadding = 8;
  static const double subcategoryBarHeight = 100;
  static const double subcategoryBarTopPadding = 32;
  static const double subcategoryBarBottomPadding = 8;
  static const double subcategoryWidgetHeight = 56;
  static const double subcategoryWidgetWidth = 73;
  static const double freeShippingBannerHeight = 32;
  static const double adWidgetHeight = 360;
  static const double adWidgetWidth = 200;
  static const double adWidgetAspectRatio = 2.278;
  static const double adWidgetImageContainerHeight = 215;
  static const double adWidgetSellerIconHeight = 22;
  static const double iconWidth = 20;
  static const double iconLarge = 64;
  static const double navBarItemMinWidth = 80;

  static double get font10 => 10.sp.clamp(10, 12);
  static double get font12 => 12.sp.clamp(12, 14);
  static double get font14 => 14.sp.clamp(14, 16);
  static double get font16 => 16.sp.clamp(16, 18);
  static double get font18 => 18.sp.clamp(18, 20);
}
