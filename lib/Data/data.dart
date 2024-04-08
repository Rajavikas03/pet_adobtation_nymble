// import 'package:flutter/widgets.dart';
const user = "James";

class Pet {
  String petNmae;
  String petAge;
  String petprice;
  String petimg;
  String petsex;
  String petweight;
  String petbreed;
  String catogory;
  bool adopt;
  bool wishlist;
  String? time;

  Pet({
    required this.petNmae,
    required this.petAge,
    required this.petprice,
    required this.petimg,
    required this.petbreed,
    required this.petweight,
    required this.petsex,
    required this.catogory,
    required this.adopt,
    required this.wishlist,
    required this.time,
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

List<Pet> Pets = [
  Pet(
    petNmae: "Pappu",
    petAge: "1.5 year",
    petprice: "\$12,000",
    petimg: "assets/petImg/dogs/husky.png",
    petbreed: "Husky",
    petweight: "12 Kg",
    petsex: "Male",
    catogory: "Dog",
    adopt: false,
    wishlist: false,
    time: '',
  ),
  Pet(
      petNmae: "Jimmy",
      petAge: "1.8 year",
      petprice: "\$8,000",
      petimg: "assets/petImg/dogs/dog1.png",
      petbreed: "Labrador",
      petweight: "10 Kg",
      petsex: "Male",
      catogory: "Dog",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "Jhonny",
      petAge: "1.8 year",
      petprice: "\$7,500",
      petimg: "assets/petImg/dogs/dog2.png",
      petbreed: "Labrador",
      petweight: "11 Kg",
      petsex: "Male",
      catogory: "Dog",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "jhon",
      petAge: "1.8 year",
      petprice: "\$6,500",
      petimg: "assets/petImg/dogs/dog3.png",
      petbreed: "Labrador",
      petweight: "11 Kg",
      petsex: "Male",
      catogory: "Dog",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "ramu",
      petAge: "1.8 year",
      petprice: "\$7,500",
      petimg: "assets/petImg/dogs/dog4.png",
      petbreed: "Labrador",
      petweight: "11 Kg",
      petsex: "Male",
      catogory: "Dog",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "sinu",
      petAge: "1.8 year",
      petprice: "\$7,500",
      petimg: "assets/petImg/dogs/dog5.png",
      petbreed: "Labrador",
      petweight: "11 Kg",
      petsex: "Male",
      catogory: "Dog",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "DOG",
      petAge: "1.8 year",
      petprice: "\$7,500",
      petimg: "assets/petImg/dogs/dog6.png",
      petbreed: "Labrador",
      petweight: "11 Kg",
      petsex: "Male",
      catogory: "Dog",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "Samantha",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/cats/cat.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Cat",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "meow",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/cats/cat3.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Cat",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "meow meow",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/cats/cat4.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Cat",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "Killi",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/birds/bird1.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Bird",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "bird",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/birds/bird2.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Bird",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "Pachai killi",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/birds/bird3.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Bird",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "Eagle",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/birds/bird4.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Bird",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/rabbits/rabbit1.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Male",
      catogory: "Rabbit",
      adopt: false,
      wishlist: false,
      time: ''),
  Pet(
      petNmae: "CAT",
      petAge: "1 year",
      petprice: "\$5,000",
      petimg: "assets/petImg/rabbits/rabbit2.png",
      petbreed: "persian",
      petweight: "2 Kg",
      petsex: "Female",
      catogory: "Rabbit",
      adopt: false,
      wishlist: false,
      time: ''),
];

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
