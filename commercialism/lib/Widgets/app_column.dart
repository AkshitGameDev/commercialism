import 'package:commercialism/Widgets/small_Text.dart';
import 'package:flutter/material.dart';
import 'package:commercialism/Widgets/icon_and_text_widget.dart';
import 'package:commercialism/Widgets/big_text.dart';
import 'package:commercialism/utils/dimensions.dart';
import 'package:commercialism/AppColors.dart';

class AppColumn extends StatelessWidget {


  final String text;
  final double size;

  const AppColumn({Key? key, required this.text, required this.size}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: text, size: size,),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const SmallText(text: "4.5"),
                      const SizedBox(width: 10),
                      const SmallText(text: "1287"),
                      const SizedBox(width: 10),
                      const SmallText(text: "comments",),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconAndTextWidget(icon: (Icons.circle), text: "Normal", iconColor: Colors.orange),
                    IconAndTextWidget(icon: Icons.location_on, text: "1.7km", iconColor: AppColors.primary),
                    IconAndTextWidget(icon: Icons.accessibility_new_outlined, text: "32min", iconColor: AppColors.danger)
                  ],)
                ],
              );
  }
}