import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/configs/colors.dart';
import 'package:portfolio/screens/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Flutter Demo',
      home: const HomeScreen(),
    );
  }
}
