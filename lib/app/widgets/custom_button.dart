import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.onTertiaryContainer,
        minimumSize: Size(double.infinity, AppSizes.customSearchButtonHeight),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
