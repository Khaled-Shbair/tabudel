import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'Screen/Main_Screen.dart';
import 'Screen/Service_Provider_Registration_Screen.dart';
import 'models/BnItem.dart';

class AllPages extends StatefulWidget {
  const AllPages({Key? key}) : super(key: key);

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.house,
    Icons.notifications_active,
    Icons.volunteer_activism_sharp,
    Icons.person,
  ];
  final List<BnItem> bnItem = [
    BnItem(widget: const MainScreen(), title: 'الملف الشخصي'),
    BnItem(widget: const MainScreen(), title: 'الإشعارات'),
    BnItem(
        widget: const ServiceProviderRegistrationScreen(),
        title: 'تسجيل كمزود خدمة'),
    BnItem(widget: const MainScreen(), title: 'الرئيسية'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          bnItem[selectedIndex].title,
          style: const TextStyle(
            fontFamily: 'HelveticaNeueLTArabic',
            color: Color(0XFF464698),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 25),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0XFFF1F1F9),
            child: IconButton(
              onPressed: () {
                  ZoomDrawer.of(context)!.toggle();
              },
              icon: const Icon(
                Icons.menu,
                size: 18,
                color: Color(0XFF464698),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: const EdgeInsetsDirectional.only(
          start: 37,
          end: 37,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: const Color(0XFF464698),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int x = 0; x < data.length; x++) ...<Expanded>{
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = x;
                      });
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(data[x], color: Colors.white),
                          if (x == selectedIndex)
                            Container(
                              margin: const EdgeInsetsDirectional.only(top: 5),
                              height: 3,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              }
            ],
          ),
        ),
      ),
      body: bnItem[selectedIndex].widget,
    );
  }
}
