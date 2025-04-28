import 'package:flutter/material.dart';
import 'package:test_flutter/pages/intro_page.dart';
import 'package:test_flutter/pages/menu_page.dart';
// ben "Pixel 3a API 34 extention level 7 arm64 -v8a" da yapiyom
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage':(context) => const IntroPage(),
        '/menupage':(context) => const MenuPage(),
      },
    );
  }
}
