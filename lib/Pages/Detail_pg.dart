import 'dart:async';

import 'package:alert_banner/exports.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:pet_adobtation_nymble/Pages/History_pg.dart';
import 'package:pet_adobtation_nymble/Widgets/Custom_Icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Bottom_nav_bar/bottom_nav_bar.dart';
import '../Data/data.dart';
import '../Widgets/Alert_banner.dart';
import '../Widgets/detail_card.dart';

class Detail_page extends StatefulWidget {
  Detail_page(
      {super.key,
      required this.img,
      required this.petname,
      required this.sex,
      required this.price,
      required this.breed,
      required this.age,
      required this.weight,
      required this.intt,
      required this.adopt,
      this.time});
  final String img;
  final String petname;
  final String sex;
  final String price;
  final String breed;
  final String age;
  final String weight;
  final int intt;
  bool adopt;
  String? time;
  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  final confetti = ConfettiController();
  bool isplay = false;
  Timer? confettiTimer;

  // late confettiTimer;
  @override
  void initState() {
    confetti.addListener(() {
      setState(() {
        isplay = confetti.state == ConfettiControllerState.playing;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    confetti.dispose();
    confettiTimer?.cancel();
    super.dispose();
  }

  void playConfetti() {
    setState(() {
      confetti.play();
      confettiTimer = Timer(const Duration(seconds: 2), () {
        confetti.stop();
      });
      showAlertBanner(
        safeAreaBottomEnabled: true,
        context,
        () => print("TAPPED"),
        Alert_Banner(
          petname: Pets[widget.intt].petNmae,
        ),
        alertBannerLocation: AlertBannerLocation.bottom,
      );
    });
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
    final _controller = PageController();

    return Stack(
      children: [
        Scaffold(
          backgroundColor: theme.primaryContainer,
          appBar: AppBar(
            backgroundColor: theme.primaryContainer,
            leading: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.primaryContainer,
                ),
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const buttom_nav_bar())),
                    child: const Icon(Icons.arrow_back_ios_new_rounded)),
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: theme.primaryContainer,
                  height: height * 0.4,
                  child: Hero(
                    tag: widget.intt,
                    child: GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white.withOpacity(0.3),
                            title: InteractiveViewer(
                              maxScale: 5.0,
                              minScale: 0.01,
                              child: Image.asset(
                                widget.img,
                                height: height * 0.5,
                                width: width * 1,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            widget.img,
                            height: height * 0.5,
                            width: width * 1,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            top: 0,
                            left: width * 0.84,
                            child: GestureDetector(
                              onTap: () => setState(() {
                                Pets[widget.intt].wishlist = true;
                              }),
                              child: icon_(
                                  height: height * 0.05,
                                  imgStr: "icons/heart.png",
                                  width: width * 0.1,
                                  color: Pets[widget.intt].wishlist
                                      ? Colors.red
                                      : theme.secondary),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  color: theme.background,
                  height: height * 0.487,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(height * 0.06),
                      SizedBox(
                        height: height * 0.15,
                        child: PageView(
                            scrollDirection: Axis.horizontal,
                            controller: _controller,
                            children: [
                              SizedBox(
                                height: height * 0.15,
                                child: Row(
                                  children: [
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: widget.petname,
                                      subtitle: 'name',
                                      color: lightpurple,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: widget.price,
                                      subtitle: 'Price',
                                      color: lightgreen,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: widget.breed,
                                      subtitle: 'breed',
                                      color: lightorange,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.15,
                                // width: width,
                                child: Row(
                                  children: [
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: widget.sex,
                                      subtitle: 'sex',
                                      color: lightpurple,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: widget.age,
                                      subtitle: 'Age',
                                      color: lightgreen,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: widget.weight,
                                      subtitle: 'Weight',
                                      color: lightorange,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Gap(height * 0.01),
                      Center(
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: 2,
                          effect: const JumpingDotEffect(
                              activeDotColor: Color(0xff8964e3),
                              dotColor: Color(0xfff5f5f5),
                              dotWidth: 18),
                        ),
                      ),
                      Gap(height * 0.1),
                      // Adopt btn
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: purple,
                              foregroundColor: Colors.white,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            onPressed: () {
                              if (!Pets[widget.intt].adopt) {
                                setState(() {
                                  Pets[widget.intt].adopt = true;
                                  // Pets[widget.intt].wishlist = true;
                                  widget.adopt = true;
                                  Pets[widget.intt].time =
                                      DateFormat('HH-mm-ss \'on\' dd/MM/yyyy')
                                          .format(DateTime.now());
                                  print("hiii ${Pets[widget.intt].time}");
                                  history_list.add({
                                    // Pets[widget.intt].petNmae,
                                    Pets[widget.intt].time,
                                  });
                                  print(history_list);
                                });
                              }
                              playConfetti();
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Pets[widget.intt].adopt
                                      ? const Text(
                                          "Adoptted Sucessfully",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )
                                      : const Text(
                                          "Adopt Me...",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Center(
            child: ConfettiWidget(
              blastDirectionality: BlastDirectionality.explosive,
              emissionFrequency: 0.2,
              numberOfParticles: 20,
              confettiController: confetti,
              shouldLoop: true,
            ),
          ),
        ),
      ],
    );
  }
}
