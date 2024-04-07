import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Widgets/fliter.dart';

import '../Const/color.dart';
import '../Data/data.dart';
import '../Widgets/GridPet_view.dart';

class Home_pg extends StatefulWidget {
  const Home_pg({Key? key}) : super(key: key);

  @override
  State<Home_pg> createState() => _Home_pgState();
}

class _Home_pgState extends State<Home_pg> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Gap(height * 0.03),
            Row(
              children: [
                Gap(width * 0.05),
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: purple,
                  // child: ,
                )
              ],
            ),
            Gap(height * 0.03),
            Row(
              children: [
                Gap(width * 0.05),
                SizedBox(
                  width: width * 0.8,
                  height: height * 0.06,
                  child: Center(
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search for ...",
                        fillColor: grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          gapPadding: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(width * 0.05),
              ],
            ),
            Gap(height * 0.02),
            Row(
              children: [
                Gap(width * 0.05),
                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Gap(width * 0.4),
                const Text(
                  "View all -->",
                  style: TextStyle(fontSize: 15, color: Colors.orange),
                ),
              ],
            ),
            Gap(height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  Filters.length,
                  (index) => filter(
                    width: width,
                    height: height,
                    text: Filters[index].filterName,
                    img: Filters[index].icon,
                  ),
                ),
              ),
            ),
            Gap(height * 0.02),
            GridPet_Veiw(
              height: height,
              width: width,
              size: Pets.length,
            ),
          ],
        ),
      ),
    );
  }
}
