import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF464698),
      body: Stack(
        children: const [
          Circles(opacity: .10, begin: 400, end: 600, milliseconds: 800),
          Circles(opacity: .12, begin: 350, end: 600, milliseconds: 1600),
          Circles(opacity: .15, begin: 300, end: 600, milliseconds: 2400),
          Circles(opacity: .21, begin: 250, end: 600, milliseconds: 3200),
          Circles(opacity: .27, begin: 200, end: 600, milliseconds: 4000),
          Circles(opacity: .33, begin: 150, end: 600, milliseconds: 4800),
          Circles(opacity: .39, begin: 100, end: 600, milliseconds: 5600),
          Circles(opacity: .45, begin:  50, end: 600, milliseconds: 6400),
        ],
      ),
    );
  }
}

class Circles extends StatelessWidget {
  const Circles({
    Key? key,
    required this.opacity,
    required this.begin,
    required this.end,
    required this.milliseconds,
  }) : super(key: key);
  final double opacity;
  final double begin;
  final double end;
  final int milliseconds;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        builder: (context, double value, child) {
          return CircularPercentIndicator(
            radius: value,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.white.withOpacity(opacity),
            lineWidth: 20,
            animation: true,
          );
        },
        curve: Curves.bounceOut,
        duration: Duration(milliseconds: milliseconds),
        tween: Tween<double>(begin: begin, end: end),
      ),
    );
  }
}
