import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/City.dart';

class ServiceProviderRegistrationScreen extends StatefulWidget {
  const ServiceProviderRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<ServiceProviderRegistrationScreen> createState() =>
      _ServiceProviderRegistrationScreenState();
}

class _ServiceProviderRegistrationScreenState
    extends State<ServiceProviderRegistrationScreen> {
  List<City> city = <City>[
    City(name: 'غزة', id: 1),
    City(name: 'خانيونس', id: 2),
    City(name: 'رفع', id: 3),
    City(name: 'النصيرات', id: 4),
    City(name: 'دير البلح', id: 5),
    City(name: 'المغازي', id: 6),
    City(name: 'الزهرة', id: 7),
  ];
  List<City> area = <City>[
    City(name: 'غزة', id: 1),
    City(name: 'خانيونس', id: 2),
    City(name: 'رفع', id: 3),
    City(name: 'النصيرات', id: 4),
    City(name: 'دير البلح', id: 5),
    City(name: 'المغازي', id: 6),
    City(name: 'الزهرة', id: 7),
  ];
  String? selectedCityId;
  String? selectedAreaId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'تسجيل كمزود خدمة',
          style: TextStyle(
            color: Color(0XFF464698),
            fontSize: 17,
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          top: 27,
          start: 37,
          end: 37,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('images/saja.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 10),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0XFF464698).withAlpha(77),
                            offset: const Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          size: 15,
                          color: Color(0XFF464698),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
          const SizedBox(
            height: 28.4,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsetsDirectional.only(
                top: 9,
                bottom: 8,
                start: 20,
              ),
              hintText: 'الاسم الكامل',
              hintStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                color: const Color(0XFF464698).withAlpha(204),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0XFFF1F1F9),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsetsDirectional.only(
                top: 9,
                bottom: 8,
                start: 20,
              ),
              hintText: 'رقم الجوال',
              hintStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                color: const Color(0XFF464698).withAlpha(204),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0XFFF1F1F9),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsetsDirectional.only(
                top: 9,
                bottom: 8,
                start: 20,
              ),
              hintText: 'المهنة',
              hintStyle: TextStyle(
                fontSize: 10,
                fontFamily: 'Helvetica',
                color: const Color(0XFF464698).withAlpha(204),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: const Color(0XFFF1F1F9),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0XFFF1F1F9),
                borderRadius: BorderRadius.circular(4)),
            child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(4),
                hint: Text(
                  'المدينة',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Helvetica',
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
                  fontFamily: 'Helvetica',
                  color: const Color(0XFF464698).withAlpha(204),
                ),
                value: selectedCityId,
                items: city
                    .map(
                      (City city) => DropdownMenuItem<String>(
                        child: Text(city.name),
                        value: city.id.toString(),
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      selectedCityId = value;
                    });
                  }
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color(0XFFF1F1F9),
                borderRadius: BorderRadius.circular(4)),
            child: DropdownButton<String>(
                borderRadius: BorderRadius.circular(4),
                hint: Text(
                  'المنطقة / الشارع',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Helvetica',
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
                  fontFamily: 'Helvetica',
                  color: const Color(0XFF464698).withAlpha(204),
                ),
                value: selectedAreaId,
                items: area
                    .map(
                      (City area) => DropdownMenuItem<String>(
                        child: Text(area.name),
                        value: area.id.toString(),
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      selectedAreaId = value;
                    });
                  }
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'تسجيل',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0XFF464698),
                  minimumSize: const Size(double.infinity, 45)),
            ),
          ),
        ],
      ),
    );
  }
}