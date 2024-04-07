import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';

import '../Data/data.dart';

class GridPet_Veiw extends StatelessWidget {
  const GridPet_Veiw({
    super.key,
    required this.height,
    required this.width,
    required this.size,
  });

  final double height;
  final double width;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: size,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: purple,
                ),
                height: height * 0.1,
                width: width * 0.3,
                child: Stack(
                  children: [
                    Image.asset(
                      Pets[index].petimg,
                      fit: BoxFit.fill,
                      height: height * 0.18,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.3),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Pets[index].petNmae,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Gap(2),
                              const Text("/"),
                              const Gap(2),
                              Text(
                                Pets[index].petprice,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
