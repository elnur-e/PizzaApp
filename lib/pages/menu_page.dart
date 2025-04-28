import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/components/button.dart';
import 'package:test_flutter/models/food.dart';
import 'package:test_flutter/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget{
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // food menu
  List foodMenu = [
    // sucuklu pizza
    Food(
        name: "Sucuklu Pizza",
        price: "150.00",
        imagePath: "lib/images/pizza-2.png",
        rating: "4.9",
    ),

    // mantarli pizza
    Food(
        name: "Mantali Pizza",
        price: "150.00",
        imagePath: "lib/images/pizza-5.png",
        rating: "4.9",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent, //ndense eksi olmuyor , bakmak lazim
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
            'Pizza',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30), //EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, //duzen .spaceBetween(.spaceEvenly) de olabilir
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo massage
                    Text(
                      '50% indirim kazan.', //indirim mesaj
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ), //yazi tipi
                    ),

                    const SizedBox(height: 20,),
                    // redeem button
                    MyButton(
                      text: "Hemen Dene",
                      onTap:(){},
                    ),
                  ],
                ),
                //image
                Image.asset(
                  'lib/images/pizza-6.png', // kupun resmi
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25), //bosluk?

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  /* border: OutlineInputBorder(  //bu ne ise yariyor? cikartsak ta etkilemiyor
                    borderSide:BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ), */
                  focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Buradan Ara...",
              ),
            ),
          ),

          const SizedBox(height: 25), //kutu

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0), //all(8.0)
            child: Text(
              "Pizza Menüleri", //pizza menu:)
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 20,
              ),
            ),
          ),

          const SizedBox(height: 10),
          
          Expanded(
            //child: Padding(
              //padding: const EdgeInsets.only(left: 25.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                ),
              ),
            //),
          ),

          const SizedBox(height: 25), //kutu


          //popular food (neden bunu ekledim ki:( (bunu cikarta biliriz
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  //image
                Image.asset(
                  'lib/images/pizza-3.png',
                  height: 60,
                ),

                const SizedBox(height: 20), //kutu

                //name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      "Karışık Pizza",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                    ),

                    const SizedBox(height: 10), //kutu

                    //price
                    Text(
                      '₺130.00',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),

              ],),

              //heart
            const  Icon(
                Icons.favorite_outline,
                color: Colors.grey,
                size: 28,
              ),
            ],
            ),
          ),

        ],
      ),
    );
  }
}