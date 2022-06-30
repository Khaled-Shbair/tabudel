import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/Button_AppBar.dart';
import '../Widget/Buttons.dart';

class DepartmentAddProductScreen extends StatefulWidget {
  const DepartmentAddProductScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentAddProductScreen> createState() =>
      _DepartmentAddProductScreenState();
}

class _DepartmentAddProductScreenState
    extends State<DepartmentAddProductScreen> {
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
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(start: 37, end: 37, top: 30),
        children: [
          const SizedBox(height: 48),
          SvgPicture.asset('images/Add product.svg', height: 500),
          const SizedBox(height: 52),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0XFF464698),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 4),
              Buttons(
                name: 'إضافة سلعة',
                colorFont: const Color(0XFF464698),
                fontSize: 12,
                color: const Color(0XFFF1F1F9),
                x: 40,
                y: 115,
                function: () {
                  Navigator.pushNamed(context, '/AddProductScreen');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
