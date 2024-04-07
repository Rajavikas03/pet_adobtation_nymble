import 'package:flutter/material.dart';

class icon_ extends StatelessWidget {
  const icon_({
    super.key,
    required this.height,
    required this.imgStr,
    required this.width,
    required this.color,
  });

  final double height;
  final String imgStr;
  final double? width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        imgStr,
        color: color,
      ),
    );
  }
}
