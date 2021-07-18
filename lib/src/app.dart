import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/src/configs/textTheme.dart';
import 'package:food_app/src/pages/homePage.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.green));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food',
      theme: ThemeData(textTheme: defaultText),
      home: HomePage(),
    );
  }
}
