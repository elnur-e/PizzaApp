import 'food.dart';

class Shop {
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


}