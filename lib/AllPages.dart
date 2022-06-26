import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'Screen/Main_Screen.dart';
import 'Screen/Service_Provider_Registration_Screen.dart';
import 'models/BnItem.dart';

class AllPages extends StatefulWidget {
  const AllPages({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);
  final Function() openDrawer;

  @override
  State<AllPages> createState() => _AllPagesState();
}

Widget openDrawer() => openDrawer();

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
        leading: const Padding(
          padding: EdgeInsetsDirectional.only(start: 25),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0XFFF1F1F9),
            child: IconButton(
              onPressed: openDrawer,
              //  ZoomDrawer.of(context)!.toggle();

              icon: Icon(
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
////////////////////////////////////////////////////////

/*











class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: DrawerScreen(
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      mainScreen: currentScreen(),
      borderRadius: 40,
      boxShadow: [
        BoxShadow(
          spreadRadius: -48,
          blurStyle: BlurStyle.inner,
          color: Colors.white.withOpacity(.50),
          offset: const Offset(75, 0),
        ),
      ],
      angle: 0.0,
      slideWidth: 281.5,
      isRtl: true,
      menuBackgroundColor: const Color(0XFF464698),
    );
  }

//   Widget currentScreen() {
//     switch (currentIndex) {
//       case 0:
//         return const HomeScreen(body: AllPages());
//       case 1:
//         return const HomeScreen(body: ServiceProviderRegistrationScreen());
//       case 2:
//         return const HomeScreen(body: ServiceProviderRegistrationScreen());
//
//       case 3:
//         return const HomeScreen(body: ServiceProviderRegistrationScreen());
//
//       case 4:
//         return const HomeScreen(body: ServiceProviderRegistrationScreen());
//
//       case 5:
//         return const HomeScreen(body: ServiceProviderRegistrationScreen());
//
//       default:
//         return const HomeScreen(body: ServiceProviderRegistrationScreen());
//     }
//   }
// }

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;

  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF464698),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(top: 40, start: 20, end: 0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 18,
                backgroundColor: const Color(0XFFF1F1F9),
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Color(0XFF464698),
                    size: 20,
                  ),
                  onPressed: () {
                    ZoomDrawer.of(context)!.close();
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 140,
          ),
          drawerList(Icons.person, "الملف الشخصي", 0),
          drawerList(Icons.volunteer_activism_sharp, "قائمة مزودي الخدمات", 1),
          drawerList(Icons.personal_injury, "الملف الشخصي(مزود الخدمات)", 2),
          drawerList(Icons.facebook, "راسلنا على واتساب", 3),
          drawerList(Icons.help_outlined, "عن التطبيق", 4),
          drawerList(Icons.logout, "تسجيل الخروج", 5),
        ],
      ),
    );
  }

  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(bottom: 30),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'HelveticaNeueLTArabic',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////
class Page extends StatelessWidget {
  const Page({Key? key, required this.openDrawer}) : super(key: key);
  final VoidCallback openDrawer;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

///////////////////////

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
    );
  }
}
*/
