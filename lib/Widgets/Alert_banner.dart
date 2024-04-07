import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert_Banner extends StatelessWidget {
  const Alert_Banner({super.key, required this.petname});
  final String petname;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.06,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
      decoration: const BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
          child: Text(
        "You've now adopted $petname",
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
      )),
    );
  }
}
