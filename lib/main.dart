import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'AllPages.dart';
import 'Screen/Login and Create Acount Screen/Account_Created_Successfully_Screen.dart';
import 'Screen/Add_And_Buy_Screen.dart';
import 'Screen/Add_Product_Screen.dart';
import 'Screen/Added_Successfully_Screen.dart';
import 'Screen/Answer_Is_No_Screen.dart';
import 'Screen/Login and Create Acount Screen/Create_Account_Screen.dart';
import 'Screen/Deltial_Product_Screen.dart';
import 'Screen/Department_Add_Product_Screen.dart';
import 'Screen/Answer_Is_Yes_Screen.dart';
import 'Screen/Login and Create Acount Screen/Add_Information_Screen.dart';
import 'Screen/Departments_Products/Computer_department_Screen.dart';
import 'Screen/Departments_Products/Test.dart';
import 'Screen/Departments_Products/new.dart';
import 'Screen/Detials_Service_Provide_Screen.dart';
import 'Screen/Info_Screen.dart';
import 'Screen/List_Provide_Service_Screen.dart';
import 'Screen/Login and Create Acount Screen/Login_Screen.dart';
import 'Screen/Logout_Screen.dart';
import 'Screen/Main_Screen.dart';
import 'Screen/MenuScreen.dart';
import 'Screen/Notifications_Screen.dart';
import 'Screen/On_Boarding 2_Screen.dart';
import 'Screen/On_Boarding1_Screen.dart';
import 'Screen/Profile_Provide_Service_Screen.dart';
import 'Screen/Ready_To_Receive_Screen.dart';
import 'Screen/Successfully_Registered_As_Service_Provider_Screen.dart';
import 'Screen/Provide_Sevice.dart';
import 'Screen/Servic_Provide_Alter_Screen.dart';
import 'Screen/Service_Provide_Registration_Screen.dart';
import 'Screen/Splash_Screen.dart';
import 'Screen/Wait_for_pickup_Screen.dart';
import 'Screen/Login and Create Acount Screen/Security_Code_Screen.dart';

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
      initialRoute: '/SecurityCodeScreen',
      routes: {
        '/Test': (context) => const Test(), //Test
        '/SSS': (context) => const SSS(), //Test
        '/OnBoarding2Screen': (context) => const OnBoarding2Screen(),
        '/OnBoarding1Screen': (context) => const OnBoarding1Screen(),
        //////////////////////////////////////////////////////////////////
        '/AddAndBuyScreen': (context) => const AddAndBuyScreen(),
        '/AddProductScreen': (context) => const AddProductScreen(),
        '/DetailProductScreen': (context) => const DetailProductScreen(),
        '/DepartmentAddProductScreen': (context) =>
            const DepartmentAddProductScreen(),
        '/ComputerDepartmentScreen': (context) =>
            const ComputerDepartmentScreen(),
        //////////////////////////////////////////////////////////////////
        '/WaitForPickupScreen': (context) => const WaitForPickupScreen(),
        '/AnswerIsYesScreen': (context) => const AnswerIsYesScreen(),
        '/ReadyToReceiveScreen': (context) => const ReadyToReceiveScreen(),
        '/AnswerIsNoScreen': (context) => const AnswerIsNoScreen(),
        '/AddedSuccessfullyScreen': (context) =>
            const AddedSuccessfullyScreen(),
        //////////////////////////////////////////////////////////////////
        '/AllPages': (context) => const AllPages(),
        '/MainScreen': (context) => const MainScreen(),
        '/MenuScreen': (context) => const MenuScreen(),
        //////////////////////////////////////////////////////////////////
        '/CreateAccountScreen': (context) => const CreateAccountScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/SecurityCodeScreen': (context) => const SecurityCodeScreen(),
        '/AddInformationScreen': (context) => const AddInformationScreen(),
        '/SplashScreen': (context) => const SplashScreen(),
        '/AccountCreatedSuccessfullyScreen': (context) =>
            const AccountCreatedSuccessfullyScreen(),
        //////////////////////////////////////////////////////////////////
        '/NotificationsScreen': (context) => const NotificationsScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/LogoutScreen': (context) => const LogoutScreen(),
        '/InfoScreen': (context) => const InfoScreen(),
        //////////////////////////////////////////////////////////////////
        '/ServiceProviderRegistrationScreen': (context) =>
            const ServiceProviderRegistrationScreen(),
        '/ProvideService': (context) =>
            const SuccessfullyRegisteredAsServiceProviderScreen(),
        '/ListProvideServiceScreen': (context) =>
            const ListProvideServiceScreen(),
        '/ServiceProviderAlterScreen': (context) =>
            const ServiceProviderAlterScreen(),
        '/ProfileProvideServiceScreen': (context) =>
            const ProfileProvideServiceScreen(),
        '/DetailServiceProvideScreen': (context) =>
            const DetailServiceProvideScreen(),
      },
    );
  }
}
