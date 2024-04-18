import 'package:flutter/material.dart';

class LedBulb extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color? color, onColor, offColor;
  final bool isSwitchOn;
  final Duration animationDuration = const Duration(milliseconds: 4000);

  const LedBulb({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    this.color,
    required this.onColor,
    required this.offColor,
    required this.isSwitchOn,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.1,
      top: screenHeight * 0.35,
      child: AnimatedContainer(
        duration: animationDuration,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSwitchOn ? onColor : offColor,
        ),
      ),
    );
  }
}
