import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'AllPages.dart';
import 'Screen/Add_And_Buy_Screen.dart';
import 'Screen/Add_Product_Screen.dart';
import 'Screen/Added_Successfully_Screen.dart';
import 'Screen/Answer_Is_No_Screen.dart';
import 'Screen/Deltial_Product_Screen.dart';
import 'Screen/Department_Add_Product_Screen.dart';
import 'Screen/Answer_Is_Yes_Screen.dart';
import 'Screen/Departments_Products/Computer_department_Screen.dart';
import 'Screen/Departments_Products/Test.dart';
import 'Screen/Detials_Service_Provide_Screen.dart';
import 'Screen/Info_Screen.dart';
import 'Screen/List_Provide_Service_Screen.dart';
import 'Screen/Logout_Screen.dart';
import 'Screen/Main_Screen.dart';
import 'Screen/Menus.dart';
import 'Screen/Notifications_Screen.dart';
import 'Screen/Profile_Provide_Service_Screen.dart';
import 'Screen/Ready_To_Receive_Screen.dart';
import 'Screen/Successfully_Registered_As_Service_Provider_Screen.dart';
import 'Screen/Provide_Sevice.dart';
import 'Screen/Servic_Provide_Alter_Screen.dart';
import 'Screen/Service_Provide_Registration_Screen.dart';
import 'Screen/Splash_Screen.dart';
import 'Screen/Wait_for_pickup_Screen.dart';

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
      initialRoute: '/AnswerIsNoScreen',
      routes: {
        '/Home': (context) => const Home(),
        '/Test': (context) => const Test(),
        '/AddAndBuyScreen': (context) => const AddAndBuyScreen(),
        '/AnswerIsNoScreen': (context) => const AnswerIsNoScreen(),
        '/DetailProductScreen': (context) => const DetailProductScreen(),
        '/DepartmentAddProductScreen': (context) =>
            const DepartmentAddProductScreen(),
        '/AddedSuccessfullyScreen': (context) =>
            const AddedSuccessfullyScreen(),
        '/AddProductScreen': (context) => const AddProductScreen(),
        '/ComputerDepartmentScreen': (context) =>
            const ComputerDepartmentScreen(),
        '/AnswerIsYesScreen': (context) => const AnswerIsYesScreen(),
        '/ReadyToReceiveScreen': (context) => const ReadyToReceiveScreen(),
        '/WaitForPickupScreen': (context) => const WaitForPickupScreen(),
        '/AllPages': (context) => const AllPages(),
        '/DetailServiceProvideScreen': (context) =>
            const DetailServiceProvideScreen(),
        '/ProvideService': (context) =>
            const SuccessfullyRegisteredAsServiceProviderScreen(),
        '/ListProvideServiceScreen': (context) =>
            const ListProvideServiceScreen(),
        '/ServiceProviderAlterScreen': (context) =>
            const ServiceProviderAlterScreen(),
        '/ProfileProvideServiceScreen': (context) =>
            const ProfileProvideServiceScreen(),
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
