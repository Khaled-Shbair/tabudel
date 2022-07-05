import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../Widget/Button_AppBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 78,
        leading: ButtonAppBar(
          start: 40,
          icon: Icons.menu,
          function: () {
            ZoomDrawer.of(context)!.toggle();
          },
        ),
        actions: [
          ButtonAppBar(
            end: 40,
            icon: Icons.create,
            function: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            margin:
                const EdgeInsetsDirectional.only(start: 37, end: 37, top: 190),
            padding: const EdgeInsetsDirectional.only(
              start: 30,
              end: 55,
              top: 50,
              bottom: 48,
            ),
            decoration: BoxDecoration(
              color: const Color(0XFFF7F7FE),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const Text(
                  'سجى الأشرم',
                  style: TextStyle(
                    color: Color(0XFF464698),
                    fontSize: 17,
                    fontFamily: 'HelveticaLTArabic',
                  ),
                ),
                const SizedBox(height: 39),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'رقم الجوال',
                          style: TextStyle(
                              color: Color(0XFF464698),
                              fontSize: 15,
                              fontFamily: 'HelveticaLTArabic'),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'المدينة',
                          style: TextStyle(
                              color: Color(0XFF464698),
                              fontSize: 15,
                              fontFamily: 'HelveticaLTArabic'),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'المنطقة',
                          style: TextStyle(
                              color: Color(0XFF464698),
                              fontSize: 15,
                              fontFamily: 'HelveticaLTArabic'),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '0592638012',
                          style: TextStyle(
                              color: Color(0XFF464698),
                              fontSize: 15,
                              fontFamily: 'HelveticaLTArabic'),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'مدينة غزة',
                          style: TextStyle(
                              color: Color(0XFF464698),
                              fontSize: 15,
                              fontFamily: 'HelveticaLTArabic'),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'النصيرات',
                          style: TextStyle(
                              color: Color(0XFF464698),
                              fontSize: 15,
                              fontFamily: 'HelveticaLTArabic'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(top: 80),
            child: Align(
              alignment: AlignmentDirectional.topCenter,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/saja.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
