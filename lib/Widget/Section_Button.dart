import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({
    Key? key,
    required this.pathImage,
    required this.nameSection,
    required this.function,
  }) : super(key: key);

  final String nameSection;
  final String pathImage;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(pathImage),
          ),
          Text(
            nameSection,
            style: const TextStyle(
              color: Color(0XFF464698),
              fontSize: 11,
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: const Color(0XFFF1F1F9),
        shadowColor: const Color(0XFF464698),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
