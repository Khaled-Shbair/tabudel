import 'package:flutter/material.dart';

import '../Widget/Buttons.dart';
import '../Widget/Menu_Choose.dart';
import '../Widget/Text_Field_Profile.dart';
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
  String font = 'HelveticaNeueLTArabic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'تسجيل كمزود خدمة',
          style: TextStyle(
            color: const Color(0XFF464698),
            fontSize: 17,
            fontFamily: font,
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
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('images/saja.jpg'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(start: 10, bottom: 5),
                    child: Container(
                      height: 30,
                      width: 30,
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
                        onPressed: () {
                          personalPicture();
                        },
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
          const TextFieldProfile(
            keyboardType: TextInputType.text,
            nameFiled: 'الاسم الكامل',
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldProfile(
            keyboardType: TextInputType.text,
            nameFiled: 'رقم الجوال',
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldProfile(
            keyboardType: TextInputType.text,
            nameFiled: 'المهنة',
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
              name: 'تسجيل',
              x: 45,
              y: double.infinity,
              function: () {},
            ),
          ),
        ],
      ),
    );
  }

  void personalPicture() {
    showModalBottomSheet(
      barrierColor: Colors.white.withAlpha(128),
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
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF1F1F9),
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0XFF464698).withAlpha(41),
                                  offset: const Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: IconButton(
                                icon: const Icon(
                                  Icons.image,
                                  color: Color(0XFF464698),
                                ),
                                onPressed: () {}),
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
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF1F1F9),
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0XFF464698).withAlpha(41),
                                  offset: const Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: IconButton(
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Color(0XFF464698),
                                ),
                                onPressed: () {}),
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
