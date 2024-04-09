import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Data/data.dart';

List history_list = [];

class History_page extends StatefulWidget {
  const History_page({super.key});

  @override
  State<History_page> createState() => __History_pageState();
}

class __History_pageState extends State<History_page> {
  @override
  void initState() {
    // wishlist();
    super.initState();
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("H i s t o r y"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Pets.length,
        itemBuilder: (context, index) {
          if (Pets[index].adopt == true) {
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
