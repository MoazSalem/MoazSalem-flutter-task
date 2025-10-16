import 'package:flutter/material.dart';
import 'package:otex/features/filter/presentation/widgets/filter_screen_app_bar.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterScreenAppBar(restoreDefaultFunction: () {}),
      body: SingleChildScrollView(child: Column(children: [])),
    );
  }
}
