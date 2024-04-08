import 'package:flutter/material.dart';
import 'package:pet_adobtation_nymble/Bottom_nav_bar/bottom_nav_bar.dart';
import 'package:pet_adobtation_nymble/Theme/theme.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: const buttom_nav_bar(),
      ),
    );
  }
}
