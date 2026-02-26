import 'package:flutter/material.dart';
import 'package:commercialism/home/main_food_page.dart';
import 'package:get/get.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
 {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commercialism',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(90, 124, 124, 124)),
        useMaterial3: true,
      ),
      home: const MainFoodPage(),
    );
  }
}
