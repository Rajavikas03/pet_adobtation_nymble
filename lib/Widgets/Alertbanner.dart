import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBanner extends StatelessWidget {
  const AlertBanner({super.key, required this.petname});
  final String petname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.06,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
          child: Text(
        "You've already adopted $petname",
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
      )),
    );
  }
}
