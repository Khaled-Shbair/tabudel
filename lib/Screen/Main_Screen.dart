import 'package:flutter/material.dart';

import '../Widget/Circle_Button.dart';
import '../Widget/Section_Button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'الرئيسية',
          style: TextStyle(
            fontFamily: 'HelveticaNeueLTArabic',
            color: Color(0XFF464698),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 25),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: const Color(0XFFF1F1F9),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 18,
                color: Color(0XFF464698),
              ),
            ),
          ),
        ),
      ),
      body: GridView(
        padding: const EdgeInsetsDirectional.only(start: 37, end: 37, top: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 135 / 126,
        ),
        children: [
          SectionButton(
            pathImage: 'images/الأثاث.png',
            nameSection: 'قسم الأثاث',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/السجاد والمفارش.png',
            nameSection: 'قسم السجاد والمفارش',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/أجهزة الجوال.png',
            nameSection: 'قسم أجهزة الجوال',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/أجهزة الحاسوب.png',
            nameSection: 'قسم أجهزة الحاسوب',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/الدراجات النارية.png',
            nameSection: 'قسم الدراجات النارية',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/الدراجات الهوائية.png',
            nameSection: 'قسم الدراجات الهوائية',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/السيارات.png',
            nameSection: 'قسم السيارات',
            function: () {},
          ),
          SectionButton(
            pathImage: 'images/الأجهزة الكهربائية.png',
            nameSection: 'قسم الأجهزة الكهربائية',
            function: () {},
          ),
        ],
      ),
    );
  }
}
