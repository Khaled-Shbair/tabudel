import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Column(
            children: [
              const SizedBox(height: 70),
              Image.asset(
                'images/عن التطبيق.png',
                width: 300,
                height: 100,
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: ClipPath(
              clipper: CustomClipPath1(),
              child: Container(
                margin: const EdgeInsetsDirectional.only(
                  start: 18,
                  end: 4.5,
                  top: 250,
                ),
                decoration: BoxDecoration(
                  color: const Color(0XFFE0E0FC).withAlpha(255),
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(40)),
                ),
                width: double.infinity,
                height: 400,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: ClipPath(
              clipper: CustomClipPath2(),
              child: Container(
                margin: const EdgeInsetsDirectional.only(
                  start: 18,
                  end: 4.5,
                  top: 260,
                ),
                decoration: BoxDecoration(
                  color: const Color(0XFFE8E8FD).withAlpha(153),
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(40)),
                ),
                width: double.infinity,
                height: 400,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: ClipPath(
              clipper: CustomClipPath3(),
              child: Container(
                padding: const EdgeInsetsDirectional.only(
                    start: 30, end: 30, top: 30),
                decoration: const BoxDecoration(
                  color: Color(0XFF464698),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(40)),
                ),
                width: double.infinity,
                height: 505,
                child: const Center(
                  child: Text(
                    ' هذا النص هو مثال لنص يمكن أن يستبدل في\n'
                    'نفس المساحة، لقد تم توليد هذا النص من مولد\n'
                    '  النص العربى، حيث يمكنك أن تولد مثل هذا\n'
                    'النص أو العديد من النصوص الأخرى إضافة إلى\n'
                    ' زيادة عدد الحروف التى يولدها التطبيق إذا كنت\n'
                    'النص العربى زيادة عدد الفقرات كما تريد، النص\n'
                    ' لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد\n'
                    'النص العربى مفيد لمصممي المواقع على وجه\n'
                    'الأحيان أن يطلع على صورة حقيقية لتصميم\n'
                    '                             الموقع\n',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeeLTArabic',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 410);
    path.lineTo(0, size.height - 325);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 410);
    path.lineTo(0, size.height - 336);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomClipPath3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 511);
    path.lineTo(0, size.height - 455);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
