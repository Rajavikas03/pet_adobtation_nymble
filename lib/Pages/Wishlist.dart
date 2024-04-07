import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wishlist_page extends StatefulWidget {
  const Wishlist_page({super.key});

  @override
  State<Wishlist_page> createState() => _Wishlist_pageState();
}

class _Wishlist_pageState extends State<Wishlist_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Wishlist"),
    );
  }
}
