import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/user/presentation/widgets/bottom_button_bar.dart';
import 'package:otex/features/user/presentation/widgets/contact_team_widget.dart';
import 'package:otex/features/user/presentation/widgets/plan_card_widget.dart';
import 'package:otex/features/user/presentation/widgets/plans_screen_app_bar.dart';
import 'package:otex/l10n/app_localizations.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: PlansScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              PlanCardWidget(
                planName: locale.p_basic,
                perks: [0],
                isSelected: false,
              ),
              PlanCardWidget(
                planName: locale.p_extra,
                perks: [0, 1, 2],
                isSelected: true,
                viewsMultiplier: 7,
              ),
              PlanCardWidget(
                planName: locale.p_plus,
                perks: [0, 1, 2, 3, 4, 5, 6],
                viewsMultiplier: 18,
                isSelected: true,
                isBestValue: true,
              ),
              PlanCardWidget(
                planName: locale.p_super,
                perks: [0, 1, 2, 3, 4, 5, 6],
                viewsMultiplier: 24,
                isSelected: false,
                isHighestViews: true,
              ),
              SizedBox(height: AppSizes.p24),
              ContactTeamWidget(),
              SizedBox(height: AppSizes.p40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButtonBar(),
    );
  }
}
