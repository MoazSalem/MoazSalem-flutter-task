import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/features/user/presentation/cubit/user_cubit.dart';
import 'package:otex/features/user/presentation/widgets/bottom_button_bar.dart';
import 'package:otex/features/user/presentation/widgets/contact_team_widget.dart';
import 'package:otex/features/user/presentation/widgets/plan_card_widget.dart';
import 'package:otex/features/user/presentation/widgets/plans_screen_app_bar.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlansScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<UserCubit, UserState>(
                builder: (context, state) {
                  return switch (state) {
                    UserLoaded() => Column(
                      children: List.generate(
                        state.plans.length,
                        (index) => PlanCardWidget(
                          subscriptionPlan: state.plans[index],
                          isSelected: [1, 2].contains(index),
                        ),
                      ),
                    ),
                    UserError() => Center(child: Text(state.message)),
                    _ => const Center(child: CircularProgressIndicator()),
                  };
                },
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
