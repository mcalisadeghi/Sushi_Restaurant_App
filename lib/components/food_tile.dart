import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/food_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Column(
        children: [
          // images
          Image.asset(
            food.imagePath,
            height: 140,
          ),
          // text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20.0,
            ),
          ),
          // price + rating
          SizedBox(
            width: 160,
            child: Text(
              '\$' + food.price,
            ),
          )
        ],
      ),
    );
  }
}
