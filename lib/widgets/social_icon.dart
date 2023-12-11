import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String imagePath;
  const SocialIcon({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white
      ),
      child: Image.asset(
        imagePath,
        height: 30,
      ),
    );
  }
}