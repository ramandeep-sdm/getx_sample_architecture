import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getapp/presentation/controllers/auth/auth_binding.dart';
import 'package:getapp/presentation/pages/home/TempPage.dart';
import 'package:getapp/presentation/pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: AuthBinding(),
      home: HomePage(),
    );
  }
}
