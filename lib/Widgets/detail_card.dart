import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class detail_card extends StatelessWidget {
  const detail_card({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final double height;
  final double width;
  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(width * 0.02),
        Container(
          height: height * 0.1,
          width: width * 0.29,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: color),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              Text(
                subtitle,
                style: const TextStyle(fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        Gap(width * 0.02),
      ],
    );
  }
}
