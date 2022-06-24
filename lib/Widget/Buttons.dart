import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.function,
    required this.name,
    required this.x,
    required this.y,
  }) : super(key: key);
  final String font = 'HelveticaNeueLTArabic';
  final Function() function;
  final String name;
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: font,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: const Color(0XFF464698),
        minimumSize: Size(y, x),
      ),
    );
  }
}
