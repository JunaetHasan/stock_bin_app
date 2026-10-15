import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? borderRadius;
  final BoxShadow? shadow;
  final double? elevation;
  final double? borderWidth;
  final Color? borderColor;

  const CustomContainer({
    super.key,
    required this.child,
    required this.width,
    required this.height,
    this.color,
    this.margin,
    this.padding,
    this.borderRadius,
    this.shadow,
    this.elevation,
    this.borderWidth,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
