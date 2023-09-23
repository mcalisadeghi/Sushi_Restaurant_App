import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/food_model.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
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
      imagePath: 'assets/images/pic2.png',
      rating: '4.5',
    ),
    Food(
      name: 'food 3',
      price: '20',
      imagePath: 'assets/images/pic3.png',
      rating: '4.5',
    ),
    Food(
      name: 'food 4',
      price: '20',
      imagePath: 'assets/images/pic4.png',
      rating: '4.5',
    ),
    Food(
      name: 'food 5',
      price: '20',
      imagePath: 'assets/images/pic5.png',
      rating: '4.5',
    ),
    Food(
      name: 'food 6',
      price: '20',
      imagePath: 'assets/images/pic6.png',
      rating: '4.5',
    ),
  ];
  // customer cart
  List<Food> _cart = [];
  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get crt => _cart;

  // add to cart
  void addToCart(
    Food foodItem,
    int quantity,
  ) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
