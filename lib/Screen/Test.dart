import 'dart:math';

import 'package:flutter/material.dart';

void main() async {
  runApp(const Testsss());
}

class Testsss extends StatefulWidget {
  const Testsss({Key? key}) : super(key: key);

  @override
  State<Testsss> createState() => _TestsssState();
}

class _TestsssState extends State<Testsss> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    startAnimation();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     duration: const Duration(milliseconds: 2000),
  //     vsync: this,
  //   )..repeat();
  // }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void startAnimation() {
    controller.stop();
    controller.reset();
    controller.repeat(period: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
  //  Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Custom Paint'),
        ),
        body: Center(
          child: CustomPaint(
            painter: SpritePainter(controller),
            child: SizedBox(
              width: 250,
              height: 250,
              child: const Center(
                  child: Text(
                "Searching...",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

class SpritePainter extends CustomPainter {
  final Animation<double> animation;

  SpritePainter(this.animation) : super(repaint: animation);

  void circle(Canvas canvas, Rect rect, double value) {
    double opacity = (1.0 - (value / 4.0)).clamp(.0, 1.0);
    double size = rect.width / 2;
    double area = size * size;
    double radius = sqrt(area * value / 4);
    Color color = Colors.blue.withOpacity(opacity);
    final Paint paint = Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    for (int wave = 3; wave >= 0; wave++) {
      circle(canvas, rect, wave * animation.value);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
