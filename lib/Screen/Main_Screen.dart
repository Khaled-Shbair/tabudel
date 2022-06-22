import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Color colorFonts = const Color(0XFF464698);
  final Color backGround = const Color(0XFF464698);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'الرئيسية',
          style: TextStyle(
            fontFamily: 'Helvetica',
            color: colorFonts,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 25),
            child: CircleAvatar(
              radius: 18,
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
      body: GridView(
        padding: const EdgeInsetsDirectional.only(start: 37, end: 37),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 135 / 126,
        ),
        children: [
          Container(
            color: Colors.blue,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Column(
              children: [
                Image.asset(''),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'قسم الأثاث',
                  style: TextStyle(
                    color: colorFonts,
                    fontSize: 11,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color(0XFFF1F1F9),
            ),
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
