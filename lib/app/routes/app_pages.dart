import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import 'package:portifolio/app/modules/home/bindings/home_binding.dart';
import 'package:portifolio/app/modules/home/views/home_view.dart';
import 'package:portifolio/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        curve: Curves.easeInOut,
        transition: Transition.topLevel,
        transitionDuration: Duration(seconds: 5)),
    GetPage(
        name: _Paths.SPLASH_SCREEN,
        page: () => SplashScreenView(),
        curve: Curves.easeInOut,
        transition: Transition.topLevel,
        transitionDuration: Duration(seconds: 6)),
  ];
}
