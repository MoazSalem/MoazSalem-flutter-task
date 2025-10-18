import 'package:flutter/material.dart';
import 'package:otex/features/ads/presentation/widgets/filter/category_section.dart';
import 'package:otex/features/ads/presentation/widgets/filter/custom_search_button.dart';
import 'package:otex/features/ads/presentation/widgets/filter/estate_state_section.dart';
import 'package:otex/features/ads/presentation/widgets/filter/filter_screen_app_bar.dart';
import 'package:otex/features/ads/presentation/widgets/filter/monthly_installments_section.dart';
import 'package:otex/features/ads/presentation/widgets/filter/payment_method_section.dart';
import 'package:otex/features/ads/presentation/widgets/filter/price_section.dart';
import 'package:otex/features/ads/presentation/widgets/filter/rooms_section.dart';
import 'package:otex/features/ads/presentation/widgets/filter/type_section.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterScreenAppBar(restoreDefaultFunction: () {}),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CategorySection(),
            const MonthlyInstallmentsSection(),
            const TypeSection(),
            const RoomsSection(),
            const PriceSection(),
            const PaymentMethodSection(),
            const EstateStateSection(),
            CustomSearchButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
