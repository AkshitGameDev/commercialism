
import 'package:commercialism/Widgets/big_text.dart';
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
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Text("SliverAppBar"),
            ),
            expandedHeight: 300,
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
                  child: const BigText(text: 'Nutritious fruit meal in China'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Text(
                    AppTexts.TestParagraph + AppTexts.TestParagraph +
                        AppTexts.TestParagraph+ AppTexts.TestParagraph +
                        AppTexts.TestParagraph+ AppTexts.TestParagraph +
                        AppTexts.TestParagraph,
                    style: TextStyle(fontSize: Dimensions.font16, fontWeight: FontWeight.bold),
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
