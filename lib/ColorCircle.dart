import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final double radius;

  ColorCircle({
    required this.color,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
