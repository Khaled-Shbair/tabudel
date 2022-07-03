import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Widget/Button_AppBar.dart';
import 'Widget/Buttons.dart';

class SecurityCodeScreen extends StatefulWidget {
  const SecurityCodeScreen({Key? key}) : super(key: key);

  @override
  State<SecurityCodeScreen> createState() => _SecurityCodeScreenState();
}

class _SecurityCodeScreenState extends State<SecurityCodeScreen> {
  late TextEditingController _firstCodeTextController;

  late TextEditingController _secondCodeTextController;
  late TextEditingController _thirdCodeTextController;

  late TextEditingController _fourthCodeTextController;
  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;
  String _code = '';

  @override
  void initState() {
    super.initState();
    _firstCodeTextController = TextEditingController();
    _secondCodeTextController = TextEditingController();
    _thirdCodeTextController = TextEditingController();
    _fourthCodeTextController = TextEditingController();
    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _firstCodeTextController.dispose();
    _secondCodeTextController.dispose();
    _thirdCodeTextController.dispose();
    _fourthCodeTextController.dispose();
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
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
        leadingWidth: 78,
        leading: ButtonAppBar(
          start: 40,
          paddingStart: 5,
          icon: Icons.arrow_back_ios,
          function: () {
            Navigator.pop(context);
          },
        ),
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
          SvgPicture.asset('images/Security code.svg'),
          const SizedBox(height: 30),
          const Text(
            ' لقد أرسلنا لك رسالة نصية قصيرة\n تحتوي على الرمز سيتم تفعيلها تلقائيا',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              height: 1.8,
              color: Color(0XFF292959),
              fontWeight: FontWeight.bold,
              fontFamily: 'HelveticaNeueLTArabic',
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: TextFormField(
                  autofocus: true,
                  controller: _firstCodeTextController,
                  focusNode: _firstFocusNode,
                  onChanged: (String value) {
                    if (value.isNotEmpty) {
                      _secondFocusNode.requestFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  cursorColor: const Color(0XFF464698),
                  style: const TextStyle(
                    color: Color(0XFF464698),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '-',
                    hintStyle: const TextStyle(
                      color: Color(0XFF464698),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsetsDirectional.only(
                      top: 15,
                      bottom: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color(0XFFF1F1F9),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 50,
                child: TextFormField(
                  controller: _secondCodeTextController,
                  focusNode: _secondFocusNode,
                  onChanged: (String value) {
                    if (value.isNotEmpty) {
                      _thirdFocusNode.requestFocus();
                    } else {
                      _firstFocusNode.requestFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  cursorColor: const Color(0XFF464698),
                  style: const TextStyle(
                    color: Color(0XFF464698),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '-',
                    hintStyle: const TextStyle(
                      color: Color(0XFF464698),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsetsDirectional.only(
                      top: 15,
                      bottom: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color(0XFFF1F1F9),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 50,
                child: TextFormField(
                  controller: _thirdCodeTextController,
                  focusNode: _thirdFocusNode,
                  onChanged: (String value) {
                    if (value.isNotEmpty) {
                      _fourthFocusNode.requestFocus();
                    } else {
                      _thirdFocusNode.requestFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  cursorColor: const Color(0XFF464698),
                  style: const TextStyle(
                    color: Color(0XFF464698),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '-',
                    hintStyle: const TextStyle(
                      color: Color(0XFF464698),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsetsDirectional.only(
                      top: 15,
                      bottom: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color(0XFFF1F1F9),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 50,
                child: TextFormField(
                  controller: _fourthCodeTextController,
                  focusNode: _fourthFocusNode,
                  onChanged: (String value) {
                    if (value.isEmpty) {
                      _thirdFocusNode.requestFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  cursorColor: const Color(0XFF464698),
                  style: const TextStyle(
                    color: Color(0XFF464698),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '-',
                    hintStyle: const TextStyle(
                      color: Color(0XFF464698),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    contentPadding: const EdgeInsetsDirectional.only(
                      top: 15,
                      bottom: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color(0XFFF1F1F9),
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 10,
              end: 10,
              top: 55,
            ),
            child: Buttons(
              name: 'إعادة إرسال الرمز',
              x: 50,
              y: double.infinity,
              function: () {
                // Navigator.pushReplacementNamed(context, '/MenuScreen');
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _performResetCode() async {
    if (_checkData()) {
      await _resetCode();
    }
  }

  bool _checkData() {
    if (_checkCode()) {
      return true;
    }
    return false;
  }

  bool _checkCode() {
    if (_firstCodeTextController.text.isNotEmpty &&
        _secondCodeTextController.text.isNotEmpty &&
        _thirdCodeTextController.text.isNotEmpty &&
        _fourthCodeTextController.text.isNotEmpty) {
      getCode();
      return true;
    }
    return false;
  }

  void getCode() {
    _code = _firstCodeTextController.text +
        _secondCodeTextController.text +
        _thirdCodeTextController.text +
        _fourthCodeTextController.text;
  }

  Future<void> _resetCode() async {}
}
