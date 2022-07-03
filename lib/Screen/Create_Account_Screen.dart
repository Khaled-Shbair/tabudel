import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/Buttons.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;

  void _navigatorToLoginScreen() =>
      Navigator.pushNamed(context, '/LoginScreen');

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _navigatorToLoginScreen;
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
          'إنشاء حساب',
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
          SvgPicture.asset('images/Create Account.svg'),
          const SizedBox(height: 67),
          ////////////////////////////////////////
          ///////////(Phone field)////////////////
          ////////////////////////////////////////
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              top: 50,
              bottom: 43,
            ),
            child: Buttons(
              name: 'إنشاء حساب',
              x: 45,
              y: double.infinity,
              function: () {
                Navigator.pushNamed(
                    context, '/AccountCreatedSuccessfullyScreen');
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
                    text: 'تسجيل دخول',
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
