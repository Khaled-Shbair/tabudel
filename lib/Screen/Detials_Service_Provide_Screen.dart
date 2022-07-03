import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../Widget/Buttons.dart';

class DetailServiceProvideScreen extends StatelessWidget {
  const DetailServiceProvideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Image.asset(
              'images/Rectangle 31.png',
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: 490,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsetsDirectional.only(start: 58, end: 37),
              children: [
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsetsDirectional.only(
                    top: 15,
                    //end: 110,
                    start: 100,
                  ),
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        bottom: 15,
                        end: 115,
                      ),
                      height: 4,
                      width: 75,
                      decoration: BoxDecoration(
                        color: const Color(0XFF292959),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const Text(
                      'سامر الحوت',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'HelveticaNeueLTArabic',
                        color: Color(0XFF464698),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF464698),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0XFFF1F1F9),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'عامل',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'HelveticaNeueLTArabic',
                        color: Color(0XFF464698),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF464698),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0XFFF1F1F9),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'مدينة غزة / دير البلح ',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'HelveticaNeueLTArabic',
                        color: Color(0XFF464698),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF464698),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0XFFF1F1F9),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'عامل كهرباء ',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'HelveticaNeueLTArabic',
                        color: Color(0XFF464698),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF464698),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0XFFF1F1F9),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      '0590005695',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'HelveticaNeueLTArabic',
                        color: Color(0XFF464698),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF464698),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0XFFF1F1F9),
                      ),
                    ),
                    SizedBox(width: 12),
                    SizedBox(
                      width: 280,
                      height: 100,
                      child: Text(
                        'مرحبا اسمي سامر ، أنا بشتغل جميع ما يتعلق بالكهرباء ، ما عليك الا تتواصل معي وما بنقصر  معك',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          fontFamily: 'HelveticaNeueLTArabic',
                          color: Color(0XFF464698),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 80,
                    end: 100,
                    top: 40,
                  ),
                  child: Buttons(
                    x: 45,
                    y: double.infinity,
                    fontSize: 15,
                    name: 'اتصل',
                    function: () async {
                      final Uri lanuchUri = Uri(
                        scheme: 'tel',
                        path: '0599724037',
                      );
                      if (await canLaunchUrlString(lanuchUri.toString())) {
                        await launchUrlString(lanuchUri.toString());
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
