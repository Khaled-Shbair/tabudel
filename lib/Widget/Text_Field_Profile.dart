import 'package:flutter/material.dart';

class TextFieldProfile extends StatelessWidget {
  const TextFieldProfile({
    Key? key,
    required this.textEditingController,
    required this.keyboardType,
    required this.nameFiled,
    this.errorText = '',
    this.suffixIcon = Icons.create,
    this.sizeSuffixIcon = 0,
  }) : super(key: key);

  final String font = 'HelveticaLTArabic';
  final TextInputType keyboardType;
  final String nameFiled;
  final String errorText;
  final IconData suffixIcon;
  final double sizeSuffixIcon;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0XFF464698),
      keyboardType: keyboardType,
      controller: textEditingController,
      style: TextStyle(
        fontSize: 12,
        fontFamily: font,
        color: const Color(0XFF464698).withAlpha(204),
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsetsDirectional.only(
          top: 9,
          bottom: 10,
          start: 20,
        ),
        suffixIcon: Icon(
          suffixIcon,
          size: sizeSuffixIcon,
          color: const Color(0XFF464698),
        ),
        hintText: nameFiled,
        hintStyle: TextStyle(
          fontSize: 10,
          fontFamily: font,
          color: const Color(0XFF464698).withAlpha(204),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4),
        ),
        fillColor: const Color(0XFFF1F1F9),
        filled: true,
      ),
    );
  }
}
