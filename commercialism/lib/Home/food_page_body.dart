import 'package:commercialism/Widgets/big_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position){
            return _buldPageItem(position);
            },
          ),
        );
     
  }
Widget _buldPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven
              ? const Color(0xFF69c5df)
              : const Color(0xFF9294cc),
        ),
      ),

      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),

          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                BigText(text: "Chinese Side"),

                const SizedBox(height: 10),

                /// ⭐ Rating row
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
                    const Text("4.5"),
                    const SizedBox(width: 10),
                    const Text("1287"),
                    const SizedBox(width: 10),
                    const Text("comments"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}


}