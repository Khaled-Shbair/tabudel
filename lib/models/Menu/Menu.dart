/*
import 'package:flutter/material.dart';
import 'package:tabudel/Screen/Service_Provider_Registration_Screen.dart';

import '../../Screen/Info_Screen.dart';
import '../../Screen/Logout_Screen.dart';
import '../../Screen/Main_Screen.dart';
import '../../Screen/Profile_Screen.dart';
import '../../Screen/Splash_Screen.dart';
import 'DrawerItem.dart';
import 'DrawerItems.dart';
import 'DrawerWidget.dart';


class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color.fromRGBO(21, 30, 61, 1),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  DrawerItem item = DrawerItems.profilePerson;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();
    openDrawer();
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }

  void openDrawer() {
    setState(() {
      xOffset = 230;
      yOffset = 150;
      scaleFactor = 0.6;
      isDrawerOpen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          buildDrawer(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildDrawer() => SafeArea(
        child: DrawerWidget(
          onSelectedItem: (item) {
            switch (item) {
              case DrawerItems.logout:
                /////////////////////////
                return;
              default:
                setState(() {
                  this.item = item;
                });
                closeDrawer();
            }
          },
        ),
      );

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDragging = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
              child: Container(
                color: isDrawerOpen
                    ? Colors.white12
                    : Theme.of(context).primaryColor,
                child: getDrawerPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDrawerPage() {
    if (item == DrawerItems.profilePerson) {
      return ProfileScreen(openDrawer: openDrawer);
    } else if (item == DrawerItems.listProvideService) {
      return ProfileScreen(openDrawer: openDrawer);
    } else if (item == DrawerItems.profileProvideService) {
      return const ServiceProviderRegistrationScreen();
    } else if (item == DrawerItems.info) {
      return InfoScreen(openDrawer: openDrawer);
    } else if (item == DrawerItems.logout) {
      return LogoutScreen(openDrawer: openDrawer);
    } else if (item == DrawerItems.whatApp) {
      return const SplashScreen();
    } else {
      return MainScreen();
    }
  }
}
*/
/**
    void main() {
    runApp(const MainPage());
    }

    class MainPage extends StatefulWidget {
    const MainPage({Key? key}) : super(key: key);

    @override
    State<MainPage> createState() => _MainPageState();
    }

    class _MainPageState extends State<MainPage> {
    late double xOffset;
    late double yOffset;
    late double scaleFactor;
    late bool isDrawerOpen;
    DrawerItem item = DrawerItems.mainScreen;
    bool isDragging = false;

    @override
    void initState() {
    super.initState();
    openDrawer();
    }

    void closeDrawer() {
    setState(() {
    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
    });
    }

    void openDrawer() {
    setState(() {
    xOffset = -130;
    yOffset = 132;
    scaleFactor = 0.6;
    isDrawerOpen = true;
    });
    }

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [Locale('ar')],
    locale: const Locale('ar'),
    home: Scaffold(
    backgroundColor: const Color(0XFF464698),
    body: Stack(
    children: [
    buildPage(),
    buildDrawer(),
    ],
    ),
    ),
    );
    }

    Widget buildDrawer() => SafeArea(
    child: DrawerWidget(
    onSelectedItem: (item) {
    setState(() => this.item = item);
    closeDrawer();
    },
    ),
    );

    Widget buildPage() {
    return WillPopScope(
    onWillPop: () async {
    if (isDrawerOpen) {
    closeDrawer();
    return false;
    } else {
    return true;
    }
    },
    child: GestureDetector(
    onTap: closeDrawer,
    onHorizontalDragStart: (details) => isDragging = true,
    onHorizontalDragUpdate: (details) {
    if (!isDragging) return;
    const delta = 1;
    if (details.delta.dx > delta) {
    openDrawer();
    } else if (details.delta.dx < -delta) {
    closeDrawer();
    }
    isDragging = false;
    },
    child: AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    transform: Matrix4.translationValues(xOffset, yOffset, 0)
    ..scale(scaleFactor),
    child: AbsorbPointer(
    absorbing: isDrawerOpen,
    child: ClipRRect(
    borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
    child: Container(
    color: isDrawerOpen
    ? Colors.white12
    : Theme.of(context).primaryColor,
    child: getDrawerPage(),
    ),
    ),
    ),
    ),
    ),
    );
    }



 */