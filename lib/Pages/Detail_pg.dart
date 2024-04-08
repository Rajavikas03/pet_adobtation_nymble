import 'dart:async';

import 'package:alert_banner/exports.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';
import 'package:pet_adobtation_nymble/Pages/Home_pg.dart';
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
    final theme = Theme.of(context);
    final _controller = PageController();

    return Stack(
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
                ),
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => buttom_nav_bar())),
                    child: const Icon(Icons.arrow_back_ios_new_rounded)),
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
                  child: Hero(
                    tag: widget.intt,
                    child: Image.asset(
                      widget.img,
                      height: height * 0.5,
                      width: width * 1,
                      fit: BoxFit.contain,
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
                  color: Colors.white,
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.3,
                                  vertical: height * 0.01),
                            ),
                            onPressed: () {
                              if (!Pets[widget.intt].adopt) {
                                setState(() {
                                  Pets[widget.intt].adopt = true;
                                  widget.adopt = true;
                                  Pets[widget.intt].time =
                                      DateFormat('HH-mm-ss \'on\' dd/MM/yyyy')
                                          .format(DateTime.now());
                                  print("hiii ${widget.intt}");
                                });
                              }
                              playConfetti();
                            },
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Pets[widget.intt].adopt
                                  ? Text(
                                      // "Adopt Me...",
                                      "Already Adopted",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  : Text(
                                      "Adopt Me...",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
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
