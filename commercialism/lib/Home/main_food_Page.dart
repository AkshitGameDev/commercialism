import 'package:commercialism/AppColors.dart';
import 'package:commercialism/Home/food_page_body.dart';
import 'package:commercialism/Utils/dimensions.dart';
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
  body: SafeArea(
    child: Column(
      children: [
        // header
        Container(
          margin: EdgeInsets.only(
            top: Dimensions.height45,
            bottom: Dimensions.height15,
          ),
          padding: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
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
                  SizedBox(height: 4),
                  Row(
                    children: const [
                      SmallText(text: "City", size: 16, color: Colors.black54),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                ],
              ),
              Container(
                width: Dimensions.height45,
                height: Dimensions.height45,
                decoration: BoxDecoration(
                  color: AppColors.Search_Button,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24),
              ),
            ],
          ),
        ),

        // whole page scrolls
        Expanded(
          child: SingleChildScrollView(
            child: FoodPageBody(),
          ),
        ),
      ],
    ),
  ),
);
  }
}
