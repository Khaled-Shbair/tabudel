import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../AllPages.dart';

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
      mainScreen: const AllPages(),
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

  Widget currentScreen() {
    switch (currentIndex) {
      case 0:
        return HomeScreen(
          title: 'الملف الشخصي',
        );
      case 1:
        return HomeScreen(
          title: "Inbox",
        );
      case 2:
        return HomeScreen(
          title: "Sent",
        );
      case 3:
        return HomeScreen(
          title: "Favorite",
        );
      case 4:
        return HomeScreen(
          title: "Archive",
        );
      case 5:
        return HomeScreen(
          title: "Spam",
        );
      default:
        return HomeScreen();
    }
  }
}

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
        padding: const EdgeInsetsDirectional.only(top: 200, start: 20, end: 0),
        children: [
          drawerList(Icons.person, "الملف الشخصي", 0),
          drawerList(Icons.volunteer_activism_sharp, "قائمة مزودي الخدمات", 1),
          drawerList(Icons.personal_injury, "الملف الشخصي(مزود الخدمات)", 2),
          drawerList(Icons.facebook, "راسلنا على واتساب", 3),
          drawerList(Icons.info, "عن التطبيق", 4),
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
        margin: const EdgeInsets.only(bottom: 23),
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

///////////////////////

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key? key, this.title = "Home"}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: DrawerWidget(),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Icon(Icons.menu),
    );
  }
}
