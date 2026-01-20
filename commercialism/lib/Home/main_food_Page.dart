import 'package:commercialism/AppColors.dart';
import 'package:commercialism/Widgets/big_text.dart';
import 'package:commercialism/Widgets/small_Text.dart';
import 'package:flutter/material.dart';


class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                  text: "India",
                  size: 32,
                  color: AppColors.COUNTRY_NAME,
                  weight: FontWeight.w600,
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      SmallText(
                        text: "City",
                        size: 16,
                        color: Colors.black54,
                      ),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                ],
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(Icons.search, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
        ],
      ),
    );
  }
}
