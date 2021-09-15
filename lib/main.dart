import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'translaiton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      home: Home(),
    );
  }
}
