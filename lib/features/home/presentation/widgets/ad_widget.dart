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
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(AppSizes.smallRoundedCorner),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: AppSizes.borderWidth,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ImageContainer(image: AppAssets.getAdImage(index: 1)),
          SizedBox(height: AppSizes.p8),
          const _TitleRow(title: "جاكيت من الصوف مناسب", isDiscounted: true),
          SizedBox(height: AppSizes.p8),
          _PriceRow(
            discountedPrice: "32,000,000",
            originalPrice: "60,000,000",
            currency: AppLocalizations.of(context)!.egp,
          ),
          SizedBox(height: AppSizes.p8),
          const _SoldOverRow(soldCount: "3.3k"),
          const _SellerInfoRow(),
        ],
      ),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  final String image;
  const _ImageContainer({required this.image});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 7,
      child: Container(
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
      ),
    );
  }
}

class _TitleRow extends StatelessWidget {
  final String title;
  final bool isDiscounted;
  const _TitleRow({required this.title, this.isDiscounted = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.titleMedium.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          if (isDiscounted) SvgPicture.asset(AppAssets.discount),
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String discountedPrice;
  final String originalPrice;
  final String currency;
  const _PriceRow({
    required this.discountedPrice,
    required this.originalPrice,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: AppTypography.titleMedium.copyWith(
                  color: Theme.of(context).colorScheme.secondaryFixed,
                ),
                children: [
                  TextSpan(text: discountedPrice),
                  TextSpan(text: "$currency/"),
                  TextSpan(
                    text: originalPrice,
                    style: AppTypography.titleMedium.copyWith(
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
}

class _SoldOverRow extends StatelessWidget {
  final String soldCount;
  const _SoldOverRow({required this.soldCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSizes.p4,
      children: [
        SvgPicture.asset(AppAssets.fire, height: AppSizes.iconSmall),
        Text(
          "${AppLocalizations.of(context)!.sold_over} $soldCount+",
          style: AppTypography.titleSmall.copyWith(
            color: Theme.of(context).colorScheme.primaryFixedDim,
          ),
        ),
      ],
    );
  }
}

class _SellerInfoRow extends StatelessWidget {
  const _SellerInfoRow();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
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
