import 'package:flutter/material.dart';

class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 224, 116),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 253, 224, 116),
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 246, 228, 160),
            ),
            child: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 246, 228, 116),
              height: height * 0.4,
              child: Image.asset("assets/dog1.jpeg"),
            ),
          ),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                color: Colors.white,
                height: height * 0.487,
              ),
            ),
          )
        ],
      ),
    );
  }
}
