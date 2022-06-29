import 'package:flutter/material.dart';

import '../Widget/Button_AppBar.dart';
import '../Widget/Buttons.dart';

class ProvideService extends StatelessWidget {
  const ProvideService({Key? key}) : super(key: key);

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
      ),
      body: ListView(
        padding:
            const EdgeInsetsDirectional.only(start: 76.5, end: 63, top: 88),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Image.asset('images/provide.png'),
          const SizedBox(height: 36.5),
          const SizedBox(
            height: 70,
            width: 207,
            child: Text(
              'لقد تم تسجيلك في قسم\n مزودي الخدمات بنجاح',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'HelveticaNeueLTArabic',
                color: Color(0XFF292959),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Buttons(
            name: 'إلغاء',
            x: 40,
            y: 106,
            function: () {
              Navigator.pushReplacementNamed(context, '/ListProvideServiceScreen');
            },
          ),
        ],
      ),
    );
  }
}
