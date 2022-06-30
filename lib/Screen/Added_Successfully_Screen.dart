import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/Button_AppBar.dart';
import '../Widget/Buttons.dart';

class AddedSuccessfullyScreen extends StatelessWidget {
  const AddedSuccessfullyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 78,
        leading: ButtonAppBar(
          start: 40,
          paddingStart: 5,
          icon: Icons.arrow_back_ios,
          function: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(start: 60, end: 60, top: 100),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SvgPicture.asset('images/Checking boxes-cuate (1).svg',
              fit: BoxFit.fitWidth, height: 300),
          const SizedBox(height: 45),
          const Text(
            'لقد تم إضافة السلعة\nبنجاح',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.8,
              fontSize: 18,
              fontFamily: 'HelveticaNeueLTArabic',
              color: Color(0XFF292959),
            ),
          ),
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 30, start: 80, end: 80),
            child: Buttons(
              name: 'إلغاء',
              x: 50,
              y: 106,
              function: () {
                Navigator.pushReplacementNamed(
                    context, '/ListProvideServiceScreen');
              },
            ),
          ),
        ],
      ),
    );
  }
}
