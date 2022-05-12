import 'package:flutter/material.dart';
import 'package:pizzamodels/constants/colors.dart';
import 'package:pizzamodels/models/food.dart';
import 'package:pizzamodels/screens/detail/widget/food_ditail.dart';
import 'package:pizzamodels/screens/detail/widget/food_img.dart';
import 'package:pizzamodels/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_new_outlined,
              Icons.favorite_border,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        ),
      ),
    );
  }
}
