import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position){
          return _buldPageItem(position);
        },
      ),
    );
  }

  Widget _buldPageItem(int index){
    return Container(
      height: 220,
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven?Color(0xFF69c5df):index.isOdd?Color(0xFF9294cc):Color(0xFFf8aabb),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/image/food0.jpg",
          ), 
        )
      )
    );
  }

}