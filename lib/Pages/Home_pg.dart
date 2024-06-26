import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pet_adobtation_nymble/Widgets/fliter.dart';

import '../Const/color.dart';
import '../Data/data.dart';
import '../Widgets/GridPet_view.dart';

class Home_pg extends StatefulWidget {
  const Home_pg({Key? key}) : super(key: key);

  @override
  State<Home_pg> createState() => _Home_pgState();
}

class _Home_pgState extends State<Home_pg> {
  TextEditingController _controller = TextEditingController();

  List<Pet> _filteredPets = Pets;

  @override
  void initState() {
    super.initState();
    // _controller.addListener(() {
  }

  void filterPets(String query) {
    setState(() {
      if (query.isNotEmpty) {
        _filteredPets = Pets.where((pet) =>
            pet.petNmae.toLowerCase().contains(query.toLowerCase())).toList();
      } else {
        _filteredPets = Pets;
      }
    });
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.background,
        body: Column(
          children: [
            Gap(height * 0.03),
            Row(
              children: [
                Gap(width * 0.05),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: theme.primary,
                ),
                const Gap(5),
                const Column(
                  children: [
                    Text(
                      user,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                         Gap(5),
                        Text("Mubai,chor bajazar"),
                        Icon(Icons.location_on)
                      ],
                    ),
                  ],
                ),
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
                      controller: _controller,
                      onChanged: (value) {
                        filterPets(value);
                      },
                      autocorrect: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search for...",
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
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: theme.onBackground),
                ),
                Gap(width * 0.4),
                Text(
                  "View all -->",
                  style: TextStyle(fontSize: 15, color: theme.onBackground),
                ),
              ],
            ),
            Gap(height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  Filters.length,
                  (index) => filter(
                    width: width,
                    height: height,
                    text: Filters[index].filterName,
                    img: Filters[index].icon,
                  ),
                ),
              ),
            ),
            Gap(height * 0.02),
            GridPet_Veiw(
              height: height,
              width: width,
              size: _filteredPets.length,
              pets: _filteredPets,
            ),
          ],
        ),
      ),
    );
  }
}
