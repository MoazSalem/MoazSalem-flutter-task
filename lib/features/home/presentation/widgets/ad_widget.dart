import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/l10n/app_localizations.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.adWidgetHeight,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: AppSizes.borderWidth,
        ),
      ),
      child: Column(
        children: [
          _buildImageContainer(context, image: AppAssets.getAdImage(index: 1)),
          SizedBox(height: AppSizes.p8),
          _buildTitleRow(
            context,
            title: "جاكيت من الصوف مناسب",
            isDiscounted: true,
          ),
          SizedBox(height: AppSizes.p8),
          _buildPriceRow(
            context,
            discountedPrice: "32,000,000",
            originalPrice: "60,000,000",
            currency: AppLocalizations.of(context)!.egp,
          ),
          SizedBox(height: AppSizes.p4),
          _buildSoldOverRow(context, soldCount: "3.3k"),

          _buildSellerInfoRow(context),
        ],
      ),
    );
  }

  Container _buildImageContainer(
    BuildContext context, {
    required String image,
  }) {
    return Container(
      height: AppSizes.adWidgetImageContainerHeight,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Center(
        child: Image.asset(
          image,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.error,
              color: Colors.red,
              size: AppSizes.iconLarge,
            );
          },
        ),
      ),
    );
  }

  Padding _buildTitleRow(
    BuildContext context, {
    required String title,
    bool isDiscounted = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          if (isDiscounted) SvgPicture.asset(AppAssets.discount),
        ],
      ),
    );
  }

  Padding _buildPriceRow(
    BuildContext context, {
    required final String discountedPrice,
    required final String originalPrice,
    required final String currency,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: AppTypography.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.secondaryFixed,
                ),
                children: [
                  TextSpan(text: discountedPrice),
                  TextSpan(text: "$currency/"),
                  TextSpan(
                    text: originalPrice,
                    style: AppTypography.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primaryFixedDim,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
            child: SvgPicture.asset(AppAssets.favorite),
          ),
        ],
      ),
    );
  }

  Padding _buildSoldOverRow(BuildContext context, {required String soldCount}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
      child: Row(
        spacing: AppSizes.p4,
        children: [
          SvgPicture.asset(AppAssets.fire),
          Text(
            "${AppLocalizations.of(context)!.sold_over} $soldCount+",
            style: AppTypography.titleSmall.copyWith(
              color: Theme.of(context).colorScheme.primaryFixedDim,
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildSellerInfoRow(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.all(AppSizes.p8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppAssets.companyBadge),
              Row(
                spacing: AppSizes.p12,
                children: [
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppSizes.smallRoundedCorner,
                      ),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                        width: AppSizes.borderWidth,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(
                        AppSizes.smallRoundedCorner,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.p8,
                          vertical: AppSizes.p4,
                        ),
                        child: SvgPicture.asset(AppAssets.addToCart),
                      ),
                    ),
                  ),
                  Image.asset(
                    AppAssets.sellerIcon,
                    height: AppSizes.adWidgetSellerIconHeight,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
