// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:pet_adobtation_nymble/Pages/Home_pg.dart';
import 'package:pet_adobtation_nymble/Pages/Profile_page.dart';
import 'package:pet_adobtation_nymble/Pages/Wishlist.dart';

import '../Widgets/Custom_Icon.dart';

int current_index = 0;
int selectedTileIndex = 0;
final screens = [
  const Home_pg(),
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
    final theme = Theme.of(context);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[current_index],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.white,
            color: grey,
            activeColor: purple,
            tabBackgroundColor: const Color(0xffeff7ff),
            selectedIndex: current_index,
            padding: const EdgeInsets.all(14.0),
            haptic: true,
            onTabChange: (index) {
              setState(() {
                // print('$index hii');
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
                    color: selectedTileIndex == 0 ? purple : disable),
                text: 'Home',
              ),
              GButton(
                icon: Icons.calendar_month_outlined,
                leading: icon_(
                    height: height * 0.028,
                    imgStr: 'icons/heart.png',
                    width: width * 0.1,
                    color: selectedTileIndex == 1 ? purple : disable),
                text: 'Wishlist',
              ),
              GButton(
                icon: Icons.message,
                leading: icon_(
                    height: height * 0.028,
                    imgStr: 'icons/profile.png',
                    width: width * 0.1,
                    color: selectedTileIndex == 2 ? purple : disable),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
