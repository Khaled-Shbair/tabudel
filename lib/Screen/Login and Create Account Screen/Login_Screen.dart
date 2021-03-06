import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Shared_Preference.dart';
import '../../Widget/Buttons.dart';
import '../../Widget/Menu_Choose.dart';
import '../../Widget/Text_Field_Profile.dart';
import '../../models/Code Country.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<CodeCountry> codeCountry = <CodeCountry>[
    CodeCountry(name: '970+', id: 1),
    CodeCountry(name: '972+', id: 2),
  ];

  String? selectedCodeCountry;
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _phoneEditingController;

  void _navigatorToCreateScreen() =>
      Navigator.pushNamed(context, '/CreateAccountScreen');

  @override
  void initState() {
    super.initState();
    _phoneEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _navigatorToCreateScreen;
  }

  @override
  void dispose() {
    _phoneEditingController.dispose();
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
            fontFamily: 'HelveticaLTArabic',
            color: Color(0XFF464698),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(top: 52, start: 37, end: 37),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SvgPicture.asset(
            'images/Login and Create Account/Log in.svg',
            height: 270,
          ),
          const SizedBox(height: 67),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextFieldProfile(
                  keyboardType: TextInputType.phone,
                  textEditingController: _phoneEditingController,
                  nameFiled: 'أدخل رقمك الهاتفي',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 1,
                child: MenuChoose(
                  function: (String? value) {
                    if (value != null) {
                      setState(() {
                        selectedCodeCountry = value;
                      });
                    }
                  },
                  paddingEnd: 10,
                  fontSize: 15,
                  paddingStart: 10,
                  selectedId: selectedCodeCountry,
                  list: codeCountry,
                  nameFiled: codeCountry[0].name,
                ),
              ),
            ],
          ),
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
              function: () => _performResetCode(),
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
                      fontFamily: 'HelveticaLTArabic',
                      color: Color(0XFF292959),
                    ),
                  ),
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'إنشاء حساب',
                    style: const TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontFamily: 'HelveticaLTArabic',
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

  Future<void> _performResetCode() async {
    if (_checkData()) {
      await _login();
    }
  }

  bool _checkData() {
    if (_phoneEditingController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'يرجى إدخال الرقم بشكل صحيح',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'HelveticaLTArabic',
            color: Color(0XFFD51818),
          ),
        ),
        padding: EdgeInsetsDirectional.only(bottom: 300, start: 50),
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
      ),
    );
    return false;
  }

  Future<void> _login() async {
    // await SharedPreferencesController()
    //     .save(phone: _phoneEditingController.text,);
    // Navigator.pushReplacementNamed(context, '/MenuScreen');
  }
}
