import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:pet_adobtation_nymble/Data/data.dart';
import 'package:provider/provider.dart';

import '../Theme/theme.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("P r o f i l e"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(50),
            CircleAvatar(
              radius: 50,
              backgroundColor: purple,
              child: Center(
                  child: Image.asset(
                "icons/profile.png",
                color: black,
              )),
            ),
            const Gap(30),
            Center(
              child: SizedBox(
                width: width * 0.8,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: const Text(user),
                  tileColor: theme.primary,
                ),
              ),
            ),
            const Gap(20),
            Center(
              child: SizedBox(
                width: width * 0.8,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  tileColor: theme.primary,
                  title: Provider.of<ThemeProvider>(context, listen: false)
                          .isDarkMode
                      ? const Text(" THEME: Dark Mode")
                      : const Text(" THEME: Light Mode"),
                  trailing: CupertinoSwitch(
                    activeColor: Theme.of(context).colorScheme.secondary,
                    trackColor: Theme.of(context).colorScheme.primary,
                    thumbColor: Theme.of(context).colorScheme.onPrimary,
                    value: Provider.of<ThemeProvider>(context, listen: false)
                        .isDarkMode,
                    onChanged: (value) =>
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
