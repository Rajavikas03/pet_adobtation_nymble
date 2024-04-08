// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:pet_adobtation_nymble/Pages/History_pg.dart';
import 'package:pet_adobtation_nymble/Pages/Home_pg.dart';
import 'package:pet_adobtation_nymble/Pages/Profile_page.dart';
import 'package:pet_adobtation_nymble/Pages/Wishlist.dart';
import '../Widgets/Custom_Icon.dart';

int current_index = 0;
int selectedTileIndex = 0;
final screens = [
  const Home_pg(),
  const History_page(),
  const Wishlist_page(),
  const Profile_page(),
];

// bottom_nav_bar() {
class buttom_nav_bar extends StatefulWidget {
  const buttom_nav_bar({super.key});

  @override
  State<buttom_nav_bar> createState() => _buttom_nav_barState();
}

class _buttom_nav_barState extends State<buttom_nav_bar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[current_index],
      bottomNavigationBar: Container(
        color: theme.background,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GNav(
            gap: 8,
            backgroundColor: theme.background,
            color: grey,
            activeColor: purple,
            tabBackgroundColor: theme.background,
            selectedIndex: current_index,
            padding: const EdgeInsets.all(14.0),
            haptic: true,
            onTabChange: (index) {
              setState(() {
                current_index = index;
                selectedTileIndex = index;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home,
                leading: icon_(
                    height: height * 0.028,
                    imgStr: 'icons/home.png',
                    width: width * 0.1,
                    color: selectedTileIndex == 0
                        ? theme.primary
                        : theme.secondary),
                text: 'Home',
              ),
              GButton(
                icon: Icons.history,
                iconColor:
                    selectedTileIndex == 1 ? theme.primary : theme.secondary,
                // leading: icon_(
                //     height: height * 0.028,
                //     imgStr: 'icons/heart.png',
                //     width: width * 0.1,
                //     color: selectedTileIndex == 1
                //         ? theme.primary
                //         : theme.secondary),
                text: 'History',
              ),
              GButton(
                icon: Icons.message,
                leading: icon_(
                    height: height * 0.028,
                    imgStr: 'icons/heart.png',
                    width: width * 0.1,
                    color: selectedTileIndex == 2
                        ? theme.primary
                        : theme.secondary),
                text: 'Profile',
              ),
              GButton(
                icon: Icons.message,
                leading: icon_(
                    height: height * 0.028,
                    imgStr: 'icons/profile.png',
                    width: width * 0.1,
                    color: selectedTileIndex == 2
                        ? theme.primary
                        : theme.secondary),
                text: 'WishList',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
