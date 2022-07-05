import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding1Screen extends StatefulWidget {
  const OnBoarding1Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding1Screen> createState() => _OnBoarding1ScreenState();
}

class _OnBoarding1ScreenState extends State<OnBoarding1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
            start: 37, end: 37, top: 50, bottom: 50),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            SvgPicture.asset(
              'images/on boarding 1/logoTitle.svg',
              height: 40,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 120),
              child: SvgPicture.asset(
                'images/on boarding 1/1.svg',
                fit: BoxFit.fitWidth,
                height: 200,
              ),
            ),
            const PhoneOneWidget(),
            const PhoneTwoWidget(),
            const ManWidget(),
            const WomanWidget(),
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

class PhoneOneWidget extends StatelessWidget {
  const PhoneOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInDown(
      delay: const Duration(seconds: 3),
      from: 20,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 320, start: 190),
        child: Center(
          child: SvgPicture.asset(
            'images/on boarding 1/phone1.svg',
            fit: BoxFit.fitWidth,
            height: 230,
          ),
        ),
      ),
    );
  }
}

class PhoneTwoWidget extends StatelessWidget {
  const PhoneTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      from: 20,
      delay: const Duration(seconds: 3),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 320, end: 167),
        child: Center(
          child: SvgPicture.asset(
            'images/on boarding 1/phone2.svg',
            fit: BoxFit.fitWidth,
            height: 230,
          ),
        ),
      ),
    );
  }
}

class ManWidget extends StatelessWidget {
  const ManWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      from: 250,
      delay: const Duration(seconds: 3),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 295, start: 110),
        child: Center(
          child: SvgPicture.asset(
            'images/on boarding 1/man.svg',
            width: 100,
            height: 190,
          ),
        ),
      ),
    );
  }
}

class WomanWidget extends StatelessWidget {
  const WomanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      from: 250,
      delay: const Duration(seconds: 3),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 295, end: 160),
        child: Center(
          child: SvgPicture.asset(
            'images/on boarding 1/woman.svg',
            width: 100,
            height: 190,
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
      delay: const Duration(seconds: 4),
      child: const Padding(
        padding: EdgeInsetsDirectional.only(bottom: 340),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Text(
            'سياسة إرجاع عادلة',
            style: TextStyle(
              color: Color(0XFF464698),
              fontSize: 20,
              fontFamily: 'HelveticaNeueLTArabic',
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
    return FadeInDown(
      delay: const Duration(seconds: 5),
      from: 20,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 250),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: FadeInUp(
            delay: const Duration(seconds: 4),
            child: const Text(
              'نضمن إرجاع السلع دون دفع أي رسوم ويمكنك\nإرجاع أي سلعة لم تعد ترغب بها مع دفع تكلفة\nالتوصيل فقط',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF292959),
                fontSize: 16,
                height: 1.5,
                fontFamily: 'HelveticaNeueLTArabic',
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
      delay: const Duration(seconds: 5),
      from: 5,
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
            Navigator.pushReplacementNamed(context, '/OnBoarding2Screen');
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
      delay: const Duration(seconds: 4),
      from: 20,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 150, bottom: 160),
        child: Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Row(
            children: const [
              CircleAvatar(radius: 6, backgroundColor: Color(0XFF9090C1)),
              SizedBox(width: 10),
              CircleAvatar(radius: 6, backgroundColor: Color(0XFF464698)),
            ],
          ),
        ),
      ),
    );
  }
}
