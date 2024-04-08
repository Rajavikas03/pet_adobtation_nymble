import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';

import '../Data/data.dart';

List History = [];

class Wishlist_page extends StatefulWidget {
  const Wishlist_page({super.key});

  @override
  State<Wishlist_page> createState() => _Wishlist_pageState();
}

class _Wishlist_pageState extends State<Wishlist_page> {
  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("H i s t o r y "),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Pets.length,
        itemBuilder: (context, index) {
          if (Pets[index].wishlist == true) {
            // String pe = Pets[index].time!;
            return Column(
              children: [
                Gap(5),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: theme.primary,
                  title: Text(Pets[index].petNmae),
                  subtitle: Text(Pets[index].time!),
                ),
                Gap(5),
              ],
            );
          } else {
            return Text("");
          }
        },
      ),
    );
  }
}
