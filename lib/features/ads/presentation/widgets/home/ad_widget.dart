import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';
import 'package:otex/core/utils/app_assets.dart';
import 'package:otex/core/utils/translations_helper.dart';
import 'package:otex/features/ads/domain/entities/ad.dart';
import 'package:otex/l10n/app_localizations.dart';

class AdWidget extends StatelessWidget {
  final Ad ad;
  const AdWidget({super.key, required this.ad});

  @override
  Widget build(BuildContext context) {
    // get translated title
    final title = TranslationsHelper.getTranslation(context, ad.title);
    // format the price to have commas
    NumberFormat formatter = NumberFormat.decimalPattern('en_US');
    final discountedPrice = formatter.format(ad.discountedPrice);
    final originalPrice = formatter.format(ad.originalPrice);
    // format the soldCount to be in ks --> 3.3k
    formatter = NumberFormat.compact();
    final soldCount = formatter.format(ad.soldCount);
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
        mainAxisSize: MainAxisSize.min,
        spacing: AppSizes.p8,
        children: [
          // Ad Image
          _ImageContainer(image: AppAssets.getImageByUrl(url: ad.imageUrl)),
          // Ad Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              spacing: AppSizes.p8,
              mainAxisSize: MainAxisSize.min,
              children: [
                _TitleRow(title: title, isDiscounted: true),
                _PriceRow(
                  discountedPrice: discountedPrice,
                  originalPrice: originalPrice,
                  currency: AppLocalizations.of(context)!.egp,
                ),
                _SoldOverRow(soldCount: soldCount),
                const _SellerInfoRow(),
              ],
            ),
          ),
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
    return Row(
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
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Expanded(
          child: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: AppTypography.titleMedium.copyWith(
                color: colorScheme.secondaryFixed,
              ),
              children: [
                TextSpan(text: discountedPrice),
                TextSpan(text: "$currency/"),
                TextSpan(
                  text: originalPrice,
                  style: AppTypography.titleMedium.copyWith(
                    color: colorScheme.primaryFixedDim,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
        ),
        FavoriteWidget(),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        // the actual call to add it to favorites should be here, for now it will lose state on scroll.
      },
      borderRadius: BorderRadius.circular(AppSizes.normalRoundedCorner),
      child: SvgPicture.asset(
        isFavorite ? AppAssets.favoriteFilled : AppAssets.favorite,
        colorFilter: ColorFilter.mode(
          isFavorite ? colorScheme.secondary : colorScheme.onSurface,
          BlendMode.srcIn,
        ),
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
          padding: EdgeInsets.symmetric(vertical: AppSizes.p8),
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
