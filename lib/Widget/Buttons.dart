import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.function,
    required this.name,
    required this.x,
    this.y = double.infinity,
    this.fontSize = 15,
    this.color = defaultColor,
    this.colorFont = Colors.white,
  }) : super(key: key);
  final String font = 'HelveticaLTArabic';
  final Function() function;
  final String name;
  final double x;
  final double y;
  final double fontSize;
  final Color color;
  final Color colorFont;
  static const Color defaultColor = Color(0XFF464698);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        name,
        style: TextStyle(
          color: colorFont,
          fontSize: fontSize,
          fontFamily: font,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: color,
        minimumSize: Size(y, x),
      ),
    );
  }
}
