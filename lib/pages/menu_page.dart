import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/btn.dart';
import 'package:flutter_application_1/components/food_tile.dart';
import 'package:flutter_application_1/model/food_model.dart';
import 'package:flutter_application_1/pages/them/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List foodMenu = [
    // salmon sushi
    Food(
      name: 'salmon',
      price: '20',
      imagePath: 'assets/images/pic1.png',
      rating: '4.5',
    ),
    Food(
      name: 'Tuna',
      price: '20',
      imagePath: 'assets/images/pic1.png',
      rating: '4.5',
    ),
    Food(
      name: 'Tuna',
      price: '20',
      imagePath: 'assets/images/pic1.png',
      rating: '4.5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Shiraz',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // promo banner
        children: [
          Container(
            decoration: BoxDecoration(
              color: promaryColor,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // promo message
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'geet 32% Promo',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // redem button
                    MyBtn(
                      text: 'Redme',
                      onTap: () {},
                    ),
                  ],
                ),
                // image
                Image.asset(
                  'assets/images/pic2.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
                hintText: 'search here ...',
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) =>
                  FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            margin: EdgeInsets.only(
              left: 25.0,
              right: 25.0,
              bottom: 25.0,
            ),
            padding: EdgeInsets.all(
              20.0,
            ),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // image
                    Image.asset(
                      'assets/images/pic5.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Salmo Eggs',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // price
                        Text(
                          '\$21.00',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // heart
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          // popular food

          // menu list

          // popular food
        ],
      ),
    );
  }
}
