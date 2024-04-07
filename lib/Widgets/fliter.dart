import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';

class filter extends StatelessWidget {
  const filter({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.img,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(width * 0.05),
        Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: purple,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Image.asset(img),
                ),
              ),
            ),
            Gap(height * 0.008),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Gap(width * 0.05),
      ],
    );
  }
}
