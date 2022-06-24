import 'package:flutter/material.dart';

class MenuChoose extends StatelessWidget {
  const MenuChoose({
    Key? key,
    required this.selectedId,
    required this.nameFiled,
    required this.list,
    required this.function,
  }) : super(key: key);

  final String font = 'HelveticaNeueLTArabic';
  final String? selectedId;
  final String nameFiled;
  final List list;
  final Function(String? value) function;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0XFFF1F1F9),
          borderRadius: BorderRadius.circular(4)),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(4),
        hint: Text(
          nameFiled, // 'المدينة'
          style: TextStyle(
            fontSize: 10,
            fontFamily: font,
            color: const Color(0XFF464698).withAlpha(204),
          ),
        ),
        menuMaxHeight: 250,
        underline: const Text(''),
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down),
        dropdownColor: const Color(0XFFF1F1F9),
        style: TextStyle(
          fontSize: 10,
          fontFamily: font,
          color: const Color(0XFF464698).withAlpha(204),
        ),
        value: selectedId,
        items: list
            .map(
              (dynamic city) => DropdownMenuItem<String>(
                child: Text(city.name),
                value: city.id.toString(),
              ),
            )
            .toList(),
        onChanged: function,
      ),
    );
  }
}
