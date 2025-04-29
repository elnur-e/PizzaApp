import 'food.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  // food menu
  final List<Food> _foodMenu = [ //privet
    // sucuklu pizza
    Food(
      name: "Suculu pizza",
      price: "150.00",
      imagePath: "lib/images/pizza-2.png",
      rating: "4.9",
    ),

    // mantarli pizza
    Food(
      name: "Mantali pizza",
      price: "150.00",
      imagePath: "lib/images/pizza-5.png",
      rating: "4.9",
    ),
  ];

  // custmer cart
  List<Food> _cart = []; //privet

  // getter methode
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity){
    for (int i=0; i<quantity; i++){
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