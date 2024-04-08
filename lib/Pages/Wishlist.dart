
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';

List History = ["hii", "hii", "hiii"];

class Wishlist_page extends StatefulWidget {
  const Wishlist_page({super.key});

  @override
  State<Wishlist_page> createState() => _Wishlist_pageState();
}

class _Wishlist_pageState extends State<Wishlist_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: History.length,
        itemBuilder: (BuildContext context, int index) {
          // Here you can generate your widgets based on the items in the History list
          // For now, I'll just display text with the index as placeholder
          return Column(
            children: [
              Gap(5),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  tileColor: purple,
                  title: Text('Item ${index + 1} ${History[index]}'),
                ),
              ),
              Gap(5),
            ],
          );
        },
      ),
    );
  }
}
