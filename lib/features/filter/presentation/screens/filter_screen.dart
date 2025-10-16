import 'package:flutter/material.dart';
import 'package:otex/features/filter/presentation/widgets/category_section.dart';
import 'package:otex/features/filter/presentation/widgets/filter_screen_app_bar.dart';
import 'package:otex/features/filter/presentation/widgets/monthly_installments_section.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterScreenAppBar(restoreDefaultFunction: () {}),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CategorySection(), MonthlyInstallmentsSection()],
        ),
      ),
    );
  }
}
