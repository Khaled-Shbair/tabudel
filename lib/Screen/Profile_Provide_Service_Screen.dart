import 'package:flutter/material.dart';

import '../Widget/Button_AppBar.dart';

class ProfileProvideServiceScreen extends StatefulWidget {
  const ProfileProvideServiceScreen({Key? key}) : super(key: key);

  @override
  State<ProfileProvideServiceScreen> createState() =>
      _ProfileProvideServiceScreenState();
}

class _ProfileProvideServiceScreenState
    extends State<ProfileProvideServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'الملف الشخصي (مزود الخدمة)',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'HelveticaNeueLTArabic',
            color: Color(0XFF464698),
          ),
        ),
        leadingWidth: 60,
        leading: ButtonAppBar(
          start: 25,
          icon: Icons.menu,
          function: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          ButtonAppBar(
            end: 30,
            icon: Icons.create,
            function: () {
              Navigator.pushNamed(context, '/ServiceProviderAlterScreen');
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          top: 50,
          start: 37,
          end: 37,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/saja.jpg'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              top: 4,
            ),
            margin: const EdgeInsetsDirectional.only(top: 20),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0XFFF1F1F9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'سجي الأشرم',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'HelveticaNeueLTArabic',
                color: const Color(0XFF464698).withAlpha(204),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              top: 4,
            ),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0XFFF1F1F9),
              borderRadius: BorderRadius.circular(4),
            ),
            margin: const EdgeInsetsDirectional.only(top: 20),
            child: Text(
              '0592638012',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'HelveticaNeueLTArabic',
                color: const Color(0XFF464698).withAlpha(204),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              top: 4,
            ),
            margin: const EdgeInsetsDirectional.only(top: 20),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0XFFF1F1F9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'مهندسة حاسوب',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'HelveticaNeueLTArabic',
                color: const Color(0XFF464698).withAlpha(204),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              top: 4,
            ),
            margin: const EdgeInsetsDirectional.only(top: 20),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0XFFF1F1F9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'غزة',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'HelveticaNeueLTArabic',
                color: const Color(0XFF464698).withAlpha(204),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              top: 4,
            ),
            margin: const EdgeInsetsDirectional.only(top: 20),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0XFFF1F1F9),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'النصيرات',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'HelveticaNeueLTArabic',
                color: const Color(0XFF464698).withAlpha(204),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
