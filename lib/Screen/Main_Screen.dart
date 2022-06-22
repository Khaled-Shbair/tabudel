import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'الرئيسية',
          style: TextStyle(
              fontFamily: 'Helvetica',
              color: Color(0XFF464698),
              fontSize: 20,
              fontWeight: FontWeight.bold),
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 135 / 126,
        ),
        children: [
          Container(
            height: 126,
            width: 135,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
