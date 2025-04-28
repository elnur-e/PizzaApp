import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/components/button.dart';
import 'package:test_flutter/main.dart';
import 'package:test_flutter/theme/colors.dart';

import '../models/food.dart';
import '../theme/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  // quantity
  int quantityCont = 0;

  // decrement quantity
  void decrementQuantity(){
    setState(() {
      quantityCont--;
    });
  }

  // increment quantity
  void incrementQuantity(){
    setState(() {
      setState(() {
        quantityCont++;
      });
    });
  }

  // Add to cart
  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
        // listview of food details
          Expanded(
            child : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0), //yineeee padding yapiyoruz:(
              child: ListView(
                children: [
                  // image
                  Image.asset(widget.food.imagePath, height: 200,),

                  const SizedBox(height: 25),

                  // rating
                  Row(
                    children: [
                      // star icon ⭐️⭐️⭐️⭐️⭐️
                      Icon(Icons.star, color: Colors.yellow[800],),

                      const SizedBox(width: 5),

                      // rating number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // food name
                  Text(
                      widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  
                  const SizedBox(height: 25),

                  //description
                  Text(
                    "Description",
                    style:  TextStyle(
                        color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "sucuklu ve lezzetli😍 mazemeler de cok guzel pisman olmazsin kesinlikle 150 dolara cok deger mua mua mua",
                    style: TextStyle(color: Colors.grey[600], fontSize: 14, height: 2,),
                  ),
                ],
              ),
            ),

          ),

        // price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
              //price + quantity
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  // price
                  Text(
                    "\$${widget.food.price}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  // qunatity
                  Row(
                    children: [
                      // minus button
                      Container(
                        decoration: BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const Icon(Icons.remove, color: Colors.white,),
                          onPressed: decrementQuantity,
                        ),
                      ),

                      // quantity count
                      SizedBox(
                        width: 40,
                        child: Center( //ortada her sey ortada dup duzgunnn
                          child: Text(
                            quantityCont.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),

                      ),


                      // plus button
                      Container(
                        decoration: BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const Icon(Icons.add, color: Colors.white,),
                          onPressed: incrementQuantity,
                        ),
                      ),
                    ],
                  ),

                  //
                ],
                ),
              const SizedBox(height: 25),

              //add to cart button
                MyButton(text: "Add To Cart", onTap: addToCart),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

