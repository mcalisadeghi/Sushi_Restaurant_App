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
        // promo banner
        children: [
          Container(
            decoration: BoxDecoration(
              color: promaryColor,
            ),
            child: Row(
              children: [
                // promo message
                Text(
                  'geet 32% Promo',
                ),
                // redem button
                MyBtn(
                  text: 'Redme',
                  onTap: () {},
                ),
              ],
            ),
          ),
          // search bar

          // menu list

          // popular food
        ],
      ),
    );
  }
}
