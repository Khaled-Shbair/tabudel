import 'package:flutter/material.dart';

import '../../Widget/Button_AppBar.dart';

class ComputerDepartmentScreen extends StatefulWidget {
  const ComputerDepartmentScreen({Key? key}) : super(key: key);

  @override
  State<ComputerDepartmentScreen> createState() =>
      _ComputerDepartmentScreenState();
}

class _ComputerDepartmentScreenState extends State<ComputerDepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leadingWidth: 78,
        leading: ButtonAppBar(
          start: 40,
          paddingStart: 5,
          icon: Icons.arrow_back_ios,
          function: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
