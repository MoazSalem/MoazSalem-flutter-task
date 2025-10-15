import 'package:flutter/material.dart';
import 'package:otex/app/widgets/custom_navigation_bar_item.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/l10n/app_localizations.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  final int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomNavigationBarItem(
            icon: AppAssets.home,
            label: locale.home,
            isSelected: _currentPage == 0,
          ),
          CustomNavigationBarItem(
            icon: AppAssets.chat,
            label: locale.chat,
            isSelected: _currentPage == 1,
          ),
          CustomNavigationBarItem(
            icon: AppAssets.add,
            label: locale.add_ad,
            isSelected: _currentPage == 2,
            blue: true,
          ),
          CustomNavigationBarItem(
            icon: AppAssets.myAds,
            label: locale.my_ads,
            isSelected: _currentPage == 3,
          ),
          CustomNavigationBarItem(
            icon: AppAssets.account,
            label: locale.account,
            isSelected: _currentPage == 4,
          ),
        ],
      ),
    );
  }
}
