import 'package:commercialism/AppColors.dart';
import 'package:commercialism/Widgets/app_icon.dart';
import 'package:commercialism/Widgets/big_text.dart';
import 'package:commercialism/Widgets/expandable_text_widget.dart';
import 'package:commercialism/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:commercialism/Utils/dimensions.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            toolbarHeight: 90,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear, iconSize: Dimensions.iconSize24),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xFFF5FAFB),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                child: Center(
                  child: BigText(
                    text: 'Chinease Side',
                    size: Dimensions.font26,
                  ),
                ),
              ),
            ),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food0.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ExpandableTextWidget(
                          text:
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph +
                              AppTexts.TestParagraph,
                        ),
                        margin: EdgeInsets.only(
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 9,
              right: Dimensions.width20 * 9,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconSize: Dimensions.iconSize26,
                  backgroundColor: AppColors.cyan,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$10.00 " + " x " + " 0",
                  color: Colors.black54,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconSize: Dimensions.iconSize26,
                  backgroundColor: AppColors.cyan,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20),
                topRight: Radius.circular(Dimensions.radius20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.height10,
                    right: Dimensions.height10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.cyan,
                    size: Dimensions.iconSize26,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.height10,
                    right: Dimensions.height10,
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: AppColors.white,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cyan,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
