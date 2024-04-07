import 'package:flutter/material.dart';
import 'package:pet_adobtation_nymble/Bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buttom_nav_bar(),
    );
  }
}
