import 'package:flutter/material.dart';

import '../Widget/Button_AppBar.dart';
import '../Widget/Buttons.dart';
import '../Widget/Circle_Button.dart';
import '../Widget/Menu_Choose.dart';
import '../Widget/Text_Field_Profile.dart';
import '../models/City.dart';

class ServiceProviderAlterScreen extends StatefulWidget {
  const ServiceProviderAlterScreen({Key? key}) : super(key: key);

  @override
  State<ServiceProviderAlterScreen> createState() =>
      _ServiceProviderAlterScreenState();
}

class _ServiceProviderAlterScreenState
    extends State<ServiceProviderAlterScreen> {
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
  String font = 'HelveticaNeueLTArabic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 60,
        leading: ButtonAppBar(
          start: 25,
          paddingStart: 15,
          icon: Icons.arrow_back_ios,
          size: 15,
          function: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'تعديل الملف الشخصي(مزود خدمة)',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'HelveticaNeueLTArabic',
            color: Color(0XFF464698),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          start: 37,
          top: 20,
          end: 37,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    height: 170,
                    width: 300,
                    color: const Color(0XFFF1F1F9),
                    child: const Icon(
                      Icons.person,
                      size: 80,
                      color: Color(0XFF464698),
                    ),
                  ),
                  CircleButton(
                    height: 35,
                    width: 35,
                    color: const Color(0XFF464698),
                    icon: Icons.camera_alt,
                    sizeIcon: 18,
                    colorIcon: Colors.white,
                    function: () {
                      personalPicture();
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 33,
          ),
          const TextFieldProfile(
            keyboardType: TextInputType.text,
            nameFiled: 'الاسم الكامل',
            sizeSuffixIcon: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldProfile(
            keyboardType: TextInputType.text,
            nameFiled: 'رقم الجوال',
            sizeSuffixIcon: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldProfile(
            keyboardType: TextInputType.text,
            nameFiled: 'المهنة',
            sizeSuffixIcon: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          MenuChoose(
            function: (String? value) {
              if (value != null) {
                setState(() {
                  selectedCityId = value;
                });
              }
            },
            selectedId: selectedCityId,
            icon: Icons.create,
            size: 20,
            paddingEnd: 15,
            list: city,
            nameFiled: 'المدينة',
          ),
          const SizedBox(
            height: 20,
          ),
          MenuChoose(
            function: (String? value) {
              if (value != null) {
                setState(() {
                  selectedAreaId = value;
                });
              }
            },
            icon: Icons.create,
            size: 20,
            paddingEnd: 15,
            selectedId: selectedAreaId,
            list: area,
            nameFiled: 'المنطقة / الشارع',
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: Buttons(
              name: 'حفظ',
              x: 45,
              y: double.infinity,
              function: () {
                Navigator.pushReplacementNamed(
                    context, '/ProfileProvideServiceScreen');
              },
            ),
          ),
        ],
      ),
    );
  }

  void personalPicture() {
    showModalBottomSheet(
      barrierColor: Colors.white.withAlpha(220),
      backgroundColor: Colors.transparent,
      elevation: 0,
      context: context,
      builder: (context) {
        return BottomSheet(
          backgroundColor: const Color(0XFFF1F1F9),
          elevation: 4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
          ),
          onClosing: () {},
          builder: (context) {
            return SizedBox(
              height: 163,
              width: double.infinity,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsetsDirectional.only(
                  top: 32,
                  start: 37,
                ),
                children: [
                  Text(
                    'الصورة الشخصية',
                    style: TextStyle(
                      fontSize: 17,
                      color: const Color(0XFF464698),
                      fontFamily: font,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CircleButton(
                            height: 40,
                            width: 40,
                            color: const Color(0XFFF1F1F9),
                            icon: Icons.image,
                            colorIcon: const Color(0XFF464698),
                            function: () {},
                          ),
                          Text(
                            'المعرض',
                            style: TextStyle(
                              fontSize: 11,
                              color: const Color(0XFF464698),
                              fontFamily: font,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 21,
                      ),
                      Column(
                        children: [
                          CircleButton(
                            height: 40,
                            width: 40,
                            color: const Color(0XFFF1F1F9),
                            icon: Icons.camera_alt,
                            colorIcon: const Color(0XFF464698),
                            function: () {},
                          ),
                          Text(
                            'الكاميرا',
                            style: TextStyle(
                              fontSize: 11,
                              color: const Color(0XFF464698).withAlpha(255),
                              fontFamily: font,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
