import 'package:flutter/material.dart';

class HorizontalScrollBar extends StatelessWidget {
  final Widget child;
  final bool pinned;
  final double height;
  const HorizontalScrollBar({
    super.key,
    required this.child,
    this.pinned = false,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: pinned,
      primary: false,
      toolbarHeight: height,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: SizedBox(height: height, child: child),
    );
  }
}
