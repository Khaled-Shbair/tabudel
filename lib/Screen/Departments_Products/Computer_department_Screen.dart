import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 37, end: 37, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: const [
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Color(0XFFF1F1F9),
                ),
                Text(
                  ' قسم أجهزة الحاسوب',
                  style: TextStyle(
                    color: Color(0XFF464698),
                    fontSize: 18,
                    height: 1.4,
                    fontFamily: 'HelveticaNeueLTArabic',
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsetsDirectional.only(top: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 136 / 154,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 14,
                ),
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.add,
                        color: Color(0XFF464698), size: 50),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0XFFF1F1F9),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
