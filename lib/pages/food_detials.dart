import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/food_model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
