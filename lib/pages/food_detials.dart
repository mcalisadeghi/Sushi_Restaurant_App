import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/btn.dart';
import 'package:flutter_application_1/model/food_model.dart';
import 'package:flutter_application_1/them/color.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetials extends StatefulWidget {
  final Food food;
  const FoodDetials({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetials> createState() => _FoodDetialsState();
}

class _FoodDetialsState extends State<FoodDetials> {
  // quantity
  int quantityCount = 0;
  // decrement quantity
  void decrementQuantity() {
    setState(
      () {
        if (quantityCount > 0) {
          quantityCount--;
        }
      },
    );
  }

// increment quantity
  void incrementQuantity() {
    setState(
      () {
        setState(
          () {
            quantityCount++;
          },
        );
      },
    );
  }

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: <Widget>[
        // list view of food details
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: ListView(
              children: [
                // image
                Image.asset(
                  widget.food.imagePath,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                // rating

                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    // rating bumber
                    Text(
                      widget.food.rating,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                // food name

                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // descreiption
                Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Banana Bicycle SunshineElephant Bymphon yWhisperCoc on utackpack FireflyChocola te Adventure Harmony Telescope  Pineapple',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    height: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
        // price + quantity add to cart button
        Container(
          color: primaryColor,
          padding: const EdgeInsets.all(
            25,
          ),
          child: Column(
            children: [
              // price + quantity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Text(
                    '\$${widget.food.price}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  // quantity
                  Row(
                    children: [
                      // mines button
                      Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                          ),
                          onPressed: decrementQuantity,
                        ),
                      ),
                      // quantity count
                      SizedBox(
                        width: 40,
                        child: Center(
                          child: Text(
                            quantityCount.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),

                      // plus button
                      Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                          ),
                          onPressed: incrementQuantity,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // add to cart button
              MyBtn(
                text: 'Add to Cart',
                onTap: addToCart,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
