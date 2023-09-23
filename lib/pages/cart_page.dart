import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/food_model.dart';
import 'package:flutter_application_1/model/shop.dart';
import 'package:flutter_application_1/them/color.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
// remov from cart
  void removeFromCart() {}
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (BuildContext context, value, Widget? child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Cart',
          ),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
            itemCount: value.cart.length,
            itemBuilder: (BuildContext context, int index) {
              // get food from cart
              final Food food = value.cart[index];

              // get food name
              final String foodName = food.name;
              // get food price
              final String foodPrice = food.price;

              // return list tile
              return ListTile(
                title: Text(
                  foodName,
                ),
                subtitle: Text(foodPrice),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: removeFromCart,
                ),
              );
            }),
      ),
    );
  }
}
