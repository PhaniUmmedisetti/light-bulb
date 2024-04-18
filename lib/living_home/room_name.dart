import 'package:flutter/material.dart';



/// Room name widget.
class RoomName extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  final String roomName;

  const RoomName(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.color,
      required this.roomName});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.25,
      width: screenWidth,
      child: Center(
        child: Transform.rotate(
          angle: -1.58,
          child: Text(
            roomName.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
        ),
      ),
    );
  }
}
