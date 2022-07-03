import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/Buttons.dart';
import '../Widget/Menu_Choose.dart';
import '../Widget/Text_Field_Profile.dart';
import '../models/City.dart';
import '../models/Code Country.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<CodeCountry> codeCountry = <CodeCountry>[
    CodeCountry(codeCountry: 'خانيونس', id: 1),
    CodeCountry(codeCountry: 'خانيونس', id: 2),
    CodeCountry(codeCountry: 'خانيونس', id: 3),
    CodeCountry(codeCountry: 'خانيونس', id: 4),
    CodeCountry(codeCountry: 'خانيونس', id: 5),
  ];
  String? selectedCodeCountry;
  late TapGestureRecognizer _tapGestureRecognizer;

  List<City> area = <City>[
    City(name: 'غزة', id: 1),
    City(name: 'خانيونس', id: 2),
    City(name: 'رفع', id: 3),
    City(name: 'النصيرات', id: 4),
    City(name: 'دير البلح', id: 5),
    City(name: 'المغازي', id: 6),
    City(name: 'الزهرة', id: 7),
  ];

  void _navigatorToCreateScreen() =>
      Navigator.pushNamed(context, '/CreateAccountScreen');

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _navigatorToCreateScreen;
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'تسجيل الدخول',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'HelveticaNeueLTArabic',
            color: Color(0XFF464698),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(top: 52, start: 37, end: 37),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SvgPicture.asset('images/Log in.svg'),
          const SizedBox(height: 67),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: const TextFieldProfile(
                    keyboardType: TextInputType.phone,
                    nameFiled: 'أدخل رقمك الهاتفي',
                  ),
                ),
              ],
            ),
          ),
        
          // MenuChoose(
          //   function: (String? value) {
          //     if (value != null) {
          //       setState(() {
          //         selectedCodeCountry = value;
          //       });
          //     }
          //   },
          //   selectedId: selectedCodeCountry,
          //   list: codeCountry,
          //   nameFiled: 'رقم الهاتف',
          //
          // ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              top: 50,
              bottom: 43,
            ),
            child: Buttons(
              name: 'تسجيل دخول',
              x: 45,
              y: double.infinity,
              function: () {
                Navigator.pushReplacementNamed(context, '/MenuScreen');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 40),
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'ليس لديك حساب من قبل ؟ ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'HelveticaNeueLTArabic',
                      color: Color(0XFF292959),
                    ),
                  ),
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'إنشاء حساب',
                    style: const TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontFamily: 'HelveticaNeueLTArabic',
                      color: Color(0XFF464698),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
