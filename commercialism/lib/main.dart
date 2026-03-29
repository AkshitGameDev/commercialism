import 'package:commercialism/pages/Food/popular_food_detail.dart';
import 'package:commercialism/pages/Food/recommended_food_details.dart';
import 'package:commercialism/pages/Home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
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
      
      home: const RecommendedFoodDetails(),
      // home: const MainFoodPage(),
      // home: const PopularFoodDetail(),
    );
  }
}
