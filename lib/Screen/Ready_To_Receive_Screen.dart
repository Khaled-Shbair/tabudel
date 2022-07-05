import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/Button_AppBar.dart';
import '../Widget/Buttons.dart';

class ReadyToReceiveScreen extends StatelessWidget {
  const ReadyToReceiveScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsetsDirectional.only(start: 70, end: 70, top: 80),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SvgPicture.asset(
            'images/ready to receive.svg',
            fit: BoxFit.fitWidth,
            height: 300,
          ),
          const SizedBox(height: 70),
          const Text(
            'هل أنت مستعد للاستلام خلال\nساعات ؟',
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.8,
              fontSize: 18,
              fontFamily: 'HelveticaLTArabic',
              color: Color(0XFF292959),
            ),
          ),
          Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 20, start: 0, end: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttons(
                  name: 'نعم',
                  x: 45,
                  y: 85,
                  function: () {
                    Navigator.pushReplacementNamed(
                        context, '/AnswerIsYesScreen');
                  },
                ),
                const SizedBox(width: 10),
                Buttons(
                  name: 'لا',
                  x: 45,
                  y: 85,
                  colorFont: const Color(0XFF464698),
                  color: const Color(0XFFF1F1F9),
                  function: () {
                    Navigator.pushReplacementNamed(
                        context, '/AnswerIsNoScreen');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
