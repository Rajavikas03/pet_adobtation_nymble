import 'package:flutter/material.dart';
import 'package:pet_adobtation_nymble/Const/color.dart';

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
                child: Image.asset(
                  "assets/petImg/husky.png",
                  height: height * 0.1,
                  width: width * 0.3,
                ),
                height: height * 0.1,
                width: width * 0.3,
              ),
            );
          }),
    );
  }
}
