import 'package:flutter/material.dart';
import 'package:otex/core/theme/app_sizes.dart';
import 'package:otex/core/theme/app_typography.dart';

class RibbonWidget extends StatelessWidget {
  final String text;
  final Color ribbonColor;
  final double arrowDepth; // Controls how deep the V-cut is
  final double height;
  final double width;
  final String localeName;

  const RibbonWidget({
    super.key,
    required this.text,
    required this.ribbonColor,
    this.arrowDepth = AppSizes.ribbonDefaultArrowDepth,
    required this.height,
    required this.width,
    required this.localeName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        // Background
        // Rotate the background based on the locale
        Transform.rotate(
          angle: localeName == 'ar' ? 0 : AppSizes.pi,
          child: CustomPaint(
            painter: RibbonBackgroundPainter(
              color: ribbonColor,
              arrowDepth: arrowDepth,
              cornerRadius: AppSizes.smallRoundedCorner,
            ),
            size: Size(width, height),
          ),
        ),
        // Text
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.p8),
          child: Text(
            text,
            style: AppTypography.bodyMedium.copyWith(
              color: Theme.of(context).colorScheme.secondaryFixed,
            ),
          ),
        ),
      ],
    );
  }
}

class RibbonBackgroundPainter extends CustomPainter {
  final Color color;
  final double arrowDepth;
  final double cornerRadius;

  RibbonBackgroundPainter({
    required this.color,
    required this.arrowDepth,
    required this.cornerRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;

    final Path path = Path();

    final radius = Radius.circular(cornerRadius);

    // Start from the top-left corner
    path.moveTo(0, 0);
    // Draw a line towards the top-right, but stop before the corner
    path.lineTo(size.width - cornerRadius, 0);
    // This draws an arc from the current point to the end of the curve.
    path.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: radius,
      clockwise: true,
    );
    // Draw a line down towards the bottom-right, stopping before the corner
    path.lineTo(size.width, size.height - cornerRadius);
    // Create the rounded bottom-right corner
    path.arcToPoint(
      Offset(size.width - cornerRadius, size.height),
      radius: radius,
      clockwise: true,
    );
    // Go to the bottom-left corner
    path.lineTo(0, size.height);
    // Move right upwards to create the 'V' notch
    path.lineTo(arrowDepth, size.height / 2);
    // Go up to create the final point of the 'V' notch
    path.lineTo(0, 0);
    // Close the path by returning to the top-left
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // never needs to be redrawn after its initial paint.
    return false;
  }
}
