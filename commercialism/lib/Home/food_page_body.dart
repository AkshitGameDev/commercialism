import 'package:commercialism/AppColors.dart';
import 'package:commercialism/Widgets/Icon_and_text_widget.dart';
import 'package:commercialism/Widgets/big_text.dart';
import 'package:commercialism/Utils/dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  
  PageController pageController = PageController(viewportFraction: 0.85);
  
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        print("Cur page val" + _currentPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buldPageItem(position);
            },
          ),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.success,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ],
    );
  }
  Widget _buldPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currentPageValue.floor()){
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor); // for the page on cur index :)
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index == _currentPageValue.floor() + 1){
      var currScale = _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor); // for the  page on right :|
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index == _currentPageValue.floor() - 1){
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor); // for the page on left :D
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);   
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

  return Transform(
    transform: matrix,
    child: Stack(
      children: [
        Container(
          height: Dimensions.pageViewContainer,
          margin: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.width15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFF9294cc),
            image: const DecorationImage(
              image: AssetImage("assets/images/food0.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimensions.pageViewTextContainer,
            margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color:  Colors.white,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color:  Colors.white,
                  offset: Offset(5, 0),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(top: Dimensions.height15, left: Dimensions.width15, right: Dimensions.width15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
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
                      const Text("4.5"),
                      const SizedBox(width: 10),
                      const Text("1287"),
                      const SizedBox(width: 10),
                      const Text("comments"),
                    ],
                  ),
                  SizedBox(height: Dimensions.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconAndTextWidget(icon: (Icons.circle), text: "Normal", iconColor: Colors.orange),
                    IconAndTextWidget(icon: Icons.location_on, text: "1.7km", iconColor: AppColors.primary),
                    IconAndTextWidget(icon: Icons.accessibility_new_outlined, text: "32min", iconColor: AppColors.danger)
                  ],)
                ],
              ),
            ),
            
          ),
        ),
        
      ],
    ),
  );
}


}