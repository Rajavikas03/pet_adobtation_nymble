import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Const/color.dart';

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
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
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
                  10,
                  (index) => filter(
                    width: width,
                    height: height,
                    text: 'Dog',
                  ),
                ),
              ),
            ),
            Gap(height * 0.02),

            // GridView.builder(
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         mainAxisSpacing: 0.0,
            //         crossAxisSpacing: 0.0,
            //         childAspectRatio: 1.0,
            //         crossAxisCount: 2),
            //     itemBuilder: (BuildContext, int) {
            //       return ListTile(
            //         tileColor: Colors.black,
            //       );
            //     })

            

            // Expanded(
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     children: List.generate(
            //       12,
            //       (index) {
            //         return SizedBox(
            //           height: 50,
            //           width: 50,
            //           child: GridTile(
            //             child: Container(
            //               color: Colors.blueAccent,
            //               child: Center(
            //                 child: Text(
            //                   'Item $index',
            //                   style: TextStyle(color: Colors.white),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class filter extends StatelessWidget {
  const filter({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(width * 0.05),
        Column(
          children: [
            CircleAvatar(
              radius: 35,
            ),
            Gap(height * 0.008),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Gap(width * 0.05),
      ],
    );
  }
}
