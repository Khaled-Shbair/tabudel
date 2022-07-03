import 'package:flutter/material.dart';

class MenuChoose extends StatelessWidget {
  const MenuChoose({
    Key? key,
    required this.selectedId,
    required this.nameFiled,
    required this.list,
    required this.function,
    this.icon = Icons.keyboard_arrow_down,
    this.size = 24,
    this.paddingEnd = 20,
    this.paddingStart = 20,
    this.marginEnd = 0,
  }) : super(key: key);

  final String font = 'HelveticaNeueLTArabic';
  final String? selectedId;
  final String nameFiled;
  final List list;
  final IconData icon;
  final double size;
  final double paddingEnd;
  final double paddingStart;
  final double marginEnd;

  final Function(String? value) function;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      padding: EdgeInsetsDirectional.only(start: paddingStart, end: paddingEnd),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0XFFF1F1F9),
          borderRadius: BorderRadius.circular(4)),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(10),
        hint: Text(
          nameFiled,
          style: TextStyle(
            fontSize: 10,
            fontFamily: font,
            color: const Color(0XFF464698).withAlpha(204),
          ),
        ),
        menuMaxHeight: 150,
        underline: const Text(''),
        isExpanded: true,
        icon: Icon(
          icon,
          color: const Color(0XFF464698),
          size: size,
        ),
        dropdownColor: const Color(0XFFF1F1F9),
        style: TextStyle(
          fontSize: 10,
          fontFamily: font,
          color: const Color(0XFF464698).withAlpha(204),
        ),
        elevation: 0,
        value: selectedId,
        items: list
            .map(
              (dynamic list) => DropdownMenuItem<String>(
                child: Text(list.name),
                value: list.id.toString(),
              ),
            )
            .toList(),
        onChanged: function,
      ),
    );
  }
}
