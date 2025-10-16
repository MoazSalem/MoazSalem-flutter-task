import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/profile/presentation/widgets/plan_card_widget.dart';
import 'package:otex/features/profile/presentation/widgets/plans_screen_app_bar.dart';

class PlansPage extends StatelessWidget {
  const PlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlansScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
          child: Column(
            children: [
              SizedBox(height: AppSizes.p8),
              PlanCardWidget(isSelected: true),
            ],
          ),
        ),
      ),
    );
  }
}
