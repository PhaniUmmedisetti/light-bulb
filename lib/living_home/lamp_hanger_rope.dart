import 'package:flutter/material.dart';


/// This widget is the Lamp hanger widget which is above the lamp lamp
class LampHangerRope extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;

  const LampHangerRope({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth * 0.2,
      child: Container(
        color: color,
        width: 15,
        height: screenHeight * 0.15,
      ),
    );
  }
}
