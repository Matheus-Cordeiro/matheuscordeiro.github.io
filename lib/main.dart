import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portifolio/app/themes/CustomDarkTheme.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: CustomDarkTheme().materialTheme,
      locale: Get.deviceLocale,
      title: "Matheus Cordeiro - Portfolio",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
