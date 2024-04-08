import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // CupertinoSwitch(
          //   activeColor: Theme.of(context).colorScheme.secondary,
          //   trackColor: Theme.of(context).colorScheme.primary,
          //   thumbColor: Theme.of(context).colorScheme.onPrimary,
          //   value:
          //       Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
          //   onChanged: (value) =>
          //       Provider.of<ThemeProvider>(context, listen: false)
          //           .toggleTheme(),
          // ),
        ],
      ),
    );
  }
}
