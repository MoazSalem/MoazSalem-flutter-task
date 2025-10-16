import 'package:flutter/material.dart';
import 'package:otex/features/filter/presentation/widgets/category_section.dart';
import 'package:otex/features/filter/presentation/widgets/custom_search_button.dart';
import 'package:otex/features/filter/presentation/widgets/estate_state_section.dart';
import 'package:otex/features/filter/presentation/widgets/filter_screen_app_bar.dart';
import 'package:otex/features/filter/presentation/widgets/monthly_installments_section.dart';
import 'package:otex/features/filter/presentation/widgets/payment_method_section.dart';
import 'package:otex/features/filter/presentation/widgets/price_section.dart';
import 'package:otex/features/filter/presentation/widgets/rooms_section.dart';
import 'package:otex/features/filter/presentation/widgets/type_section.dart';

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
