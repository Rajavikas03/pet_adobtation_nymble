import 'dart:async';

import 'package:alert_banner/exports.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widgets/Alert_banner.dart';
import '../Widgets/detail_card.dart';

class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  bool isplay = false;
  final confetti = ConfettiController();
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
      // showDialog(
      //     context: context,
      //     builder: (context) {
      //       return AlertDialog(
      //         icon: Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             InkWell(
      //               onTap: () => Navigator.pop(context),
      //               child: Icon(
      //                 Icons.close,
      //                 color: Colors.red,
      //               ),
      //             ),
      //           ],
      //         ),
      //         title: Text("Rick is adopted !!!"),
      //       );
      //     });
      showAlertBanner(
        safeAreaBottomEnabled: true,
        context,
        () => print("TAPPED"),
        const Alert_Banner(
          petname: 'Rick',
        ),
        alertBannerLocation: AlertBannerLocation.bottom,
      );
    });
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    final _controller = PageController();

    return Stack(
      // alignment: Alignment.topCenter,
      children: [
        Scaffold(
          backgroundColor: Color.fromARGB(255, 253, 224, 116),
          appBar: AppBar(
            backgroundColor: yellow,
            leading: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lightyellow,
                  // Color.fromARGB(255, 246, 228, 160)
                ),
                child: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: yellow,
                  height: height * 0.4,
                  child: Image.asset(
                    "assets/petimg/husky.png",
                    height: height * 0.4,
                    width: width * 1,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  color: Colors.white,
                  height: height * 0.487,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(height * 0.06),
                      SizedBox(
                        height: height * 0.15,
                        // width: width,
                        child: PageView(
                            scrollDirection: Axis.horizontal,
                            controller: _controller,
                            children: [
                              SizedBox(
                                height: height * 0.15,
                                // width: width,
                                child: Row(
                                  children: [
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: 'Rick',
                                      subtitle: 'name',
                                      color: lightpurple,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: "\$12,000",
                                      subtitle: 'Price',
                                      color: lightgreen,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: 'Husky',
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
                                      title: 'Male',
                                      subtitle: 'sex',
                                      color: lightpurple,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: '1.5 Year',
                                      subtitle: 'Age',
                                      color: lightgreen,
                                    ),
                                    detail_card(
                                      height: height,
                                      width: width,
                                      title: '12 Kg',
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
                              elevation: 4, // Elevation
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    40), // Button border radius
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.3,
                                  vertical: height * 0.01),
                            ),
                            onPressed: () {
                              playConfetti();

                              // AlertDialog(title: ,);
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Adopt Me...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
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
