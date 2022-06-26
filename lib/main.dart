import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'AllPages.dart';
import 'Screen/Info_Screen.dart';
import 'Screen/Logout_Screen.dart';
import 'Screen/Main_Screen.dart';
import 'Screen/Notifications_Screen.dart';
import 'Screen/Profile_Screen.dart';
import 'Screen/Service_Provider_Registration_Screen.dart';
import 'Screen/Splash_Screen.dart';
import 'models/Menu/Menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar')],
      locale: const Locale('ar'),
      initialRoute: '/AllPages',
      routes: {
        '/Menu': (context) => const Menu(),
        '/AllPages': (context) => const AllPages(),
        '/MainScreen': (context) => const MainScreen(),
        '/NotificationsScreen': (context) => const NotificationsScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/LogoutScreen': (context) => const LogoutScreen(),
        '/InfoScreen': (context) => const InfoScreen(),
        '/SplashScreen': (context) => const SplashScreen(),
        '/ServiceProviderRegistrationScreen': (context) =>
            const ServiceProviderRegistrationScreen(),
      },
    );
  }
}
