import 'package:flutter/material.dart';
import 'package:otex/app/widgets/custom_navigation_bar_item.dart';
import 'package:otex/core/theme/app_assets.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/l10n/app_localizations.dart';

class CustomNavigationBar extends StatefulWidget {
  final void Function(int) onItemTapped;
  final int currentPage;
  const CustomNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.currentPage,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    // this is defined here to get the translated label
    final navigationItems = <_NavigationItem>[
      _NavigationItem(AppAssets.home, locale.home, false),
      _NavigationItem(AppAssets.chat, locale.chat, false),
      _NavigationItem(AppAssets.add, locale.add_ad, true),
      _NavigationItem(AppAssets.myAds, locale.my_ads, false),
      _NavigationItem(AppAssets.account, locale.account, false),
    ];

    return Container(
      height: AppSizes.navBarHeight,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 2,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            navigationItems.length,
            (index) => CustomNavigationBarItem(
              icon: navigationItems[index].icon,
              label: navigationItems[index].label,
              isBlue: navigationItems[index].isPrimaryAction,
              isSelected: widget.currentPage == index,
              onTap: () => widget.onItemTapped(index),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavigationItem {
  final String icon;
  final String label;
  final bool isPrimaryAction;
  _NavigationItem(this.icon, this.label, this.isPrimaryAction);
}
