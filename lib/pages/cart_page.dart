import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/btn.dart';
import 'package:flutter_application_1/model/food_model.dart';
import 'package:flutter_application_1/model/shop.dart';
import 'package:flutter_application_1/them/color.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
// remov from cart
  void removeFromCart(Food food, BuildContext context) {
    // get access to shop
    final shop = context.read<Shop>();
    // remove from cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (BuildContext context, value, Widget? child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text(
            'My Cart',
          ),
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: <Widget>[
            // custome cart
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (BuildContext context, int index) {
                  // get food from cart
                  final Food food = value.cart[index];

                  // get food name
                  final String foodName = food.name;
                  // get food price
                  final String foodPrice = food.price;

                  // return list tile
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                    ),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                        onPressed: () => removeFromCart(
                          food,
                          context,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // pay button
            Padding(
              padding: const EdgeInsets.all(
                25.0,
              ),
              child: MyBtn(
                text: 'Pay Now',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
