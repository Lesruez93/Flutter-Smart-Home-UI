import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smart Home",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF0F5F4),
        ),
        scaffoldBackgroundColor: Color(0xFFF0F5F4),
        primaryColor: Colors.green,
        fontFamily: 'GilroyFont'
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
