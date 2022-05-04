// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sbase/app/modules/account/bindings/account_binding.dart';
import 'package:sbase/app/modules/account/views/account_page.dart';
import 'package:sbase/app/modules/login/bindings/login_binding.dart';
import 'package:sbase/app/modules/login/views/login_page.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountPage(),
      binding: AccountBinding(),
    ),
  ];
}
