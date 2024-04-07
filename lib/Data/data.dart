// import 'package:flutter/widgets.dart';

class Pet {
  String petNmae;
  String petAge;
  String petprice;
  String petimg;
  String petsex;
  String petweight;
  String petbreed;
  String catogory;
  bool Adopt;
  bool wishlist;

  Pet({
    required this.petNmae,
    required this.petAge,
    required this.petprice,
    required this.petimg,
    required this.petbreed,
    required this.petweight,
    required this.petsex,
    required this.catogory,
    required this.Adopt,
    required this.wishlist,
  });
}

class Filter {
  String icon;
  String filterName;

  Filter({
    required this.icon,
    required this.filterName,
  });
}

List<Filter> Filters = [
  Filter(icon: 'assets/icons/dod.png', filterName: "Dog"),
  Filter(icon: "assets/icons/cat.png", filterName: "Cat"),
  Filter(icon: "assets/icons/bird.png", filterName: "Bird"),
  Filter(icon: "assets/icons/chicken.png", filterName: "Chicken"),
  Filter(icon: "assets/icons/fish.png", filterName: "Fish"),
  Filter(icon: "assets/icons/parrot.png", filterName: "Parrot"),
  Filter(icon: "assets/icons/rabbit.png", filterName: "Rabbit"),
  Filter(icon: "assets/icons/rat.png", filterName: "Hamster")
];
