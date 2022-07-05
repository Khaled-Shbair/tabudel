import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding2Screen extends StatefulWidget {
  const OnBoarding2Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding2Screen> createState() => _OnBoarding2ScreenState();
}

class _OnBoarding2ScreenState extends State<OnBoarding2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 37,
          end: 37,
          top: 50,
          bottom: 50,
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            SvgPicture.asset('images/on boarding 1/logoTitle.svg', height: 40),
            const ImageTwoWidget(),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 150),
              child: SvgPicture.asset(
                'images/on boarding 1/on boarding 1.svg',
                fit: BoxFit.fitWidth,
                height: 320,
              ),
            ),
            const TextOneWidget(),
            const TextTwoWidget(),
            const SliderWidget(),
            const Padding(
              padding: EdgeInsetsDirectional.only(bottom: 30),
              child: ButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageTwoWidget extends StatelessWidget {
  const ImageTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: const Duration(seconds: 2),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 320, start: 15),
        child: Center(
          child: SvgPicture.asset(
            'images/on boarding 1/on boarding 2.svg',
            fit: BoxFit.fitWidth,
            height: 300,
          ),
        ),
      ),
    );
  }
}

class TextOneWidget extends StatelessWidget {
  const TextOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 20,
      delay: const Duration(seconds: 2),
      child: const Padding(
        padding: EdgeInsetsDirectional.only(bottom: 220),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Text(
            'توصيل سريع',
            style: TextStyle(
              color: Color(0XFF464698),
              fontSize: 20,
              fontFamily: 'HelveticaLTArabic',
            ),
          ),
        ),
      ),
    );
  }
}

class TextTwoWidget extends StatelessWidget {
  const TextTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(seconds: 3),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 150),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: FadeInUp(
            delay: const Duration(seconds: 3),
            child: const Text(
              'نتبع سياسة توصيل آمنة تضمن وصول\nالسلعة لباب منزلك خلال 24 ساعة أو أقل',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF292959),
                fontSize: 16,
                height: 1.7,
                fontFamily: 'HelveticaLTArabic',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 80,
      delay: const Duration(milliseconds: 3250),
      child: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: FloatingActionButton(
          child: const Icon(
            Icons.arrow_right_alt,
            size: 30,
          ),
          backgroundColor: const Color(0XFF464698),
          elevation: 0,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/LoginScreen');
          },
        ),
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(seconds: 2),
      from: 20,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 150, bottom: 100),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Row(
            children: const [
              CircleAvatar(radius: 6, backgroundColor: Color(0XFF464698)),
              SizedBox(width: 10),
              CircleAvatar(radius: 6, backgroundColor: Color(0XFF9090C1)),
            ],
          ),
        ),
      ),
    );
  }
}
