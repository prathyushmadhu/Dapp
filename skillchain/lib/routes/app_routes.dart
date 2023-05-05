import 'package:skillchain3/presentation/login_screen/login_screen.dart';
import 'package:skillchain3/presentation/login_screen/binding/login_binding.dart';
import 'package:skillchain3/presentation/splash_screen/splash_screen.dart';
import 'package:skillchain3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:skillchain3/presentation/create_account_screen/create_account_screen.dart';
import 'package:skillchain3/presentation/create_account_screen/binding/create_account_binding.dart';
import 'package:skillchain3/presentation/signup_user_screen/signup_user_screen.dart';
import 'package:skillchain3/presentation/signup_user_screen/binding/signup_user_binding.dart';
import 'package:skillchain3/presentation/main_screen/main_screen.dart';
import 'package:skillchain3/presentation/main_screen/binding/main_binding.dart';
import 'package:skillchain3/presentation/login_one_screen/login_one_screen.dart';
import 'package:skillchain3/presentation/login_one_screen/binding/login_one_binding.dart';
import 'package:skillchain3/presentation/signup_screen/signup_screen.dart';
import 'package:skillchain3/presentation/signup_screen/binding/signup_binding.dart';
import 'package:skillchain3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:skillchain3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String splashScreen = '/splash_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String signupUserScreen = '/signup_user_screen';

  static const String mainScreen = '/main_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String signupScreen = '/signup_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [
        CreateAccountBinding(),
      ],
    ),
    GetPage(
      name: signupUserScreen,
      page: () => SignupUserScreen(),
      bindings: [
        SignupUserBinding(),
      ],
    ),
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: loginOneScreen,
      page: () => LoginOneScreen(),
      bindings: [
        LoginOneBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
