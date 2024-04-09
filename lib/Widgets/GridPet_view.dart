import 'package:alert_banner/exports.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:pet_adobtation_nymble/Pages/Detail_pg.dart';

import '../Data/data.dart';
import 'Alertbanner.dart';

// final refreshKey = GlobalKey<State>();

class GridPet_Veiw extends StatefulWidget {
  GridPet_Veiw({
    super.key,
    required this.height,
    required this.width,
    required this.size,
    required this.pets,
  });

  final double height;
  final double width;
  final int size;
  List<Pet> pets;

// ...

  @override
  State<GridPet_Veiw> createState() => _GridPet_VeiwState();
}

class _GridPet_VeiwState extends State<GridPet_Veiw> {
  @override
  void initState() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Expanded(
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.size,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  if (widget.pets[index].adopt) {
                    showAlertBanner(
                      safeAreaBottomEnabled: true,
                      context,
                      () => print("TAPPED"),
                      AlertBanner(
                        petname: widget.pets[index].petNmae,
                      ),
                      alertBannerLocation: AlertBannerLocation.bottom,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detail_page(
                          img: Pets[index].petimg,
                          petname: Pets[index].petNmae,
                          sex: Pets[index].petsex,
                          price: Pets[index].petprice,
                          breed: Pets[index].petbreed,
                          age: Pets[index].petAge,
                          weight: Pets[index].petweight,
                          intt: index,
                          time: Pets[index].time,
                          adopt: Pets[index].adopt,
                        ),
                      ),
                    );
                  }
                },
                child: Hero(
                  tag: index,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: widget.pets[index].adopt
                          ? theme.secondary
                          : theme.primary,
                    ),
                    height: widget.height * 0.1,
                    width: widget.width * 0.3,
                    child: Stack(
                      children: [
                        Image.asset(
                          widget.pets[index].petimg,
                          fit: BoxFit.fill,
                          height: widget.height * 0.18,
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
                                    widget.pets[index].petNmae,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: theme.background),
                                  ),
                                  const Gap(2),
                                  const Text("/"),
                                  const Gap(2),
                                  Text(
                                    widget.pets[index].petprice,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: theme.background),
                                  ),
                                ],
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
