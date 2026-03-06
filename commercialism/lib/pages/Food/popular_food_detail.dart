import 'package:commercialism/Widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:commercialism/utils/dimensions.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food0.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          Positioned(child: Container(
            margin: EdgeInsets.only(top: Dimensions.popularFoodImgSize - 20),
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20),
                topRight: Radius.circular(Dimensions.radius20)
              )
            ),
          ))
        ],
      ),
    );
  }
}