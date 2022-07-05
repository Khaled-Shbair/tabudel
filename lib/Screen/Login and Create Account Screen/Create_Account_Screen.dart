import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widget/Buttons.dart';
import '../../Widget/Menu_Choose.dart';
import '../../Widget/Text_Field_Profile.dart';
import '../../models/Code Country.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  List<CodeCountry> codeCountry = <CodeCountry>[
    CodeCountry(name: '970+', id: 1),
    CodeCountry(name: '972+', id: 2),
  ];

  String? selectedCodeCountry;
  late TextEditingController _phoneEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;

  void _navigatorToLoginScreen() =>
      Navigator.pushNamed(context, '/LoginScreen');

  @override
  void initState() {
    super.initState();
    _phoneEditingController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = _navigatorToLoginScreen;
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
          'إنشاء حساب',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'HelveticaLTArabic',
            color: Color(0XFF464698),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(top: 40, start: 37, end: 37),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SvgPicture.asset(
            'images/Login and Create Account/Create Account.svg',
            height: 250,
          ),
          const SizedBox(height: 67),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFieldProfile(
                    keyboardType: TextInputType.phone,
                    textEditingController: _phoneEditingController,
                    errorText: 'يرجى إدخال الرقم بشكل صحيح',
                    nameFiled: 'أدخل رقمك الهاتفي',
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: MenuChoose(
                    function: (String? value) {
                      if (value != null) {
                        setState(() {
                          selectedCodeCountry = value;
                        });
                      }
                    },
                    paddingEnd: 10,
                    paddingStart: 10,
                    selectedId: selectedCodeCountry,
                    list: codeCountry,
                    nameFiled: codeCountry[0].name,
                  ),
                ),
              ],
            ),
          ),
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
                Navigator.pushNamed(context, '/SecurityCodeScreen');
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
                      fontFamily: 'HelveticaLTArabic',
                      color: Color(0XFF292959),
                    ),
                  ),
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: 'تسجيل دخول',
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
}
