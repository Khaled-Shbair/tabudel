import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'AllPages.dart';
import 'Screen/Login and Create Account Screen/Account_Created_Successfully_Screen.dart';
import 'Screen/Add_And_Buy_Screen.dart';
import 'Screen/Add_Product_Screen.dart';
import 'Screen/Added_Successfully_Screen.dart';
import 'Screen/Answer_Is_No_Screen.dart';
import 'Screen/Login and Create Account Screen/Create_Account_Screen.dart';
import 'Screen/Detail_Product_Screen.dart';
import 'Screen/Department_Add_Product_Screen.dart';
import 'Screen/Answer_Is_Yes_Screen.dart';
import 'Screen/Login and Create Account Screen/Add_Information_Screen.dart';
import 'Screen/Departments_Products/Computer_department_Screen.dart';
import 'Screen/Provide_Service_Screen/Details_Service_Provide_Screen.dart';
import 'Screen/Info_Screen.dart';
import 'Screen/Provide_Service_Screen/List_Provide_Service_Screen.dart';
import 'Screen/Login and Create Account Screen/Login_Screen.dart';
import 'Screen/Login and Create Account Screen/Logout_Screen.dart';
import 'Screen/Main_Screen.dart';
import 'Screen/MenuScreen.dart';
import 'Screen/Notifications_Screen.dart';
import 'Screen/Splash_Screen/On_Boarding 2_Screen.dart';
import 'Screen/Splash_Screen/On_Boarding1_Screen.dart';
import 'Screen/Provide_Service_Screen/Profile_Provide_Service_Screen.dart';
import 'Screen/Ready_To_Receive_Screen.dart';
import 'Screen/Provide_Service_Screen/Successfully_Registered_As_Service_Provider_Screen.dart';
import 'Screen/Provide_Service_Screen/Provide_Service.dart';
import 'Screen/Provide_Service_Screen/Service_Provide_Alter_Screen.dart';
import 'Screen/Provide_Service_Screen/Service_Provide_Registration_Screen.dart';
import 'Screen/Splash_Screen/Splash_Screen.dart';
import 'Screen/Wait_for_pickup_Screen.dart';
import 'Screen/Login and Create Account Screen/Security_Code_Screen.dart';
import 'Shared_Preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesController().getInstance();
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
      //initialRoute: '/SplashScreen',
      initialRoute: '/',
      routes: {
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
        '/OnBoarding2Screen': (context) => const OnBoarding2Screen(),
        '/OnBoarding1Screen': (context) => const OnBoarding1Screen(),
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
