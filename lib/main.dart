import 'package:flutter/material.dart';

import 'AllPages.dart';
import 'Screen/Main_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/MainScreen',
      routes: {
        '/AllPages': (context) => const AllPages(),
        '/MainScreen': (context) => const MainScreen(),
      },
    );
  }
}
