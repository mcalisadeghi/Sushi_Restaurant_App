import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/btn.dart';
import 'package:flutter_application_1/pages/them/color.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
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
          SizedBox(
            height: 25,
          ),
          // search bar
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // menu lit
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
          SizedBox(
            height: 25,
          ),
          // popular food

          // menu list

          // popular food
        ],
      ),
    );
  }
}
