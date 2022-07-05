import 'package:flutter/material.dart';

import '../Widget/Button_AppBar.dart';
import 'Department_Add_Product_Screen.dart';
import 'Departments_Products/Computer_department_Screen.dart';

class AddAndBuyScreen extends StatelessWidget {
  const AddAndBuyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        body: Column(
          children: [
            Container(
              height: 45,
              margin:
                  const EdgeInsetsDirectional.only(start: 37, end: 37, top: 30),
              decoration: BoxDecoration(
                color: const Color(0XFFF1F1F9),
                borderRadius: BorderRadius.circular(22),
              ),
              child: TabBar(
                padding: const EdgeInsetsDirectional.only(
                  top: 4,
                  bottom: 4,
                  end: 5,
                  start: 5,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0XFF464698),
                // controller: tabController,
                labelStyle: const TextStyle(
                  fontFamily: 'HelveticaLTArabic',
                  fontSize: 15,
                ),
                indicator: BoxDecoration(
                  color: const Color(0XFF464698),
                  borderRadius: BorderRadius.circular(22),
                ),
                tabs: const [
                  Text('إضافة'),
                  Text('شراء'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  DepartmentAddProductScreen(),
                  ComputerDepartmentScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
