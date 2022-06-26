import 'package:flutter/material.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'تسجيل خروج',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'HelveticaNeeLTArabic',
            color: Color(0XFF464698),
          ),
        ),
        leadingWidth: 75,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 40),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0XFFF1F1F9),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: Color(0XFF464698),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 37),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0XFFF1F1F9),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 18,
                  color: Color(0XFF464698),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsetsDirectional.only(start: 69, end: 69),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0XFF464698),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: const Color(0XFFE8E8FD).withAlpha(153),
                offset: const Offset(2, 60),
                spreadRadius: -40,
              ),
              BoxShadow(
                color: const Color(0XFFE0E0FC).withAlpha(255),
                offset: const Offset(0, 30),
                spreadRadius: -20,
              ),
            ],
          ),
          child: ListView(
            padding: const EdgeInsetsDirectional.only(
              start: 30,
              end: 30,
              top: 30,
            ),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const Text(
                'هل تريد تسجيل الخروج\nمن الحساب ؟ ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'HelveticaNeeLTArabic',
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'إلغاء',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF464698),
                    fontFamily: 'HelveticaNeeLTArabic',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'تسجيل خروج',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'HelveticaNeeLTArabic',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
