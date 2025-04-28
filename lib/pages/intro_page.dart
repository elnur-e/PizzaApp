
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange, //fromARGB(255,138,60,55)
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //tum cocuklar sola dogru
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //bos yerleri doldurma
          children: [
            const SizedBox(height: 25),
            //shop name
            Text(
              "PIZZA",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            //icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/pizza.png',),
            ),

            const SizedBox(height: 25),

            //title
            Text(
              "THE TASTE OF REAL PIZZA",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color:Colors.white,
              ),
            ),
            const SizedBox(height: 10),

            // subtitle
            Text(
              "Feel the teste of the most delicious pizza from anywhere and anytime",
              style: TextStyle(color: Colors.grey[300],
              height: 2,
              ),
            ),

            const SizedBox(height: 25),

            //get start button
            MyButton(
              text: "Get Stated",
              onTap: (){
                  //go to the menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )

          ],
        ),
      )

    );
  }
}