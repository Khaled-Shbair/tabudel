import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.home,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          child: Container(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 35,
                    decoration: BoxDecoration(

                      border: index == selectedIndex
                          ? const Border(
                              bottom: BorderSide(width: 3, color: Colors.white),
                      )
                          : null,

                    ),
                    child: Icon(
                      data[index],
                      size: 35,
                      color: index == selectedIndex
                          ? Colors.black
                          : Colors.grey.shade800,
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
