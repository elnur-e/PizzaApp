import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.deepOrange.shade600),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(width: 10),

          // Icon
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),

        ],
      ),

    );
  }
}