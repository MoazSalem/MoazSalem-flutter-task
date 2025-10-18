import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/ads/presentation/cubit/ads_cubit.dart';
import 'package:otex/features/ads/presentation/widgets/home/ad_widget.dart';
import 'package:otex/l10n/app_localizations.dart';

class AdsGridView extends StatelessWidget {
  const AdsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme.headlineSmall;
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.p16,
        vertical: AppSizes.p12,
      ),
      sliver: BlocBuilder<AdsCubit, AdsState>(
        builder: (context, state) {
          return switch (state) {
            // Initial and Loading states
            AdsInitial() || AdsLoading() => const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            ),
            // Loaded state
            AdsLoaded(ads: final ads) =>
              ads.isEmpty
                  // if ads is empty show no results found
                  ? SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(locale.no_results_found, style: textTheme),
                      ),
                    )
                  // if ads is not empty show ads grid
                  : SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        childCount: ads.length,
                        (context, index) {
                          return AdWidget(ad: ads[index]);
                        },
                      ),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: AppSizes.adWidgetAspectRatio,
                        maxCrossAxisExtent: AppSizes.adWidgetWidth,
                        mainAxisSpacing: AppSizes.p12,
                        crossAxisSpacing: AppSizes.p12,
                      ),
                    ),

            // Error state
            AdsError(message: final message) => SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: Text(message, style: textTheme)),
            ),

            // Else
            _ => SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Text(locale.unexpected_error, style: textTheme),
              ),
            ),
          };
        },
      ),
    );
  }
}
