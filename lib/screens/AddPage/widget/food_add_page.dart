import 'package:flutter/material.dart';
import 'package:pizzamodels/screens/detail/widget/detali.dart';
import 'package:pizzamodels/widgets/custom_app_bar.dart';
import '../../../models/food.dart';

class FoodAddPage extends StatelessWidget {
  // final Food food;
//  FoodAddPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (SingleChildScrollView(
      child: Column(
        children: [CustomAppBar(Icons.arrow_back, Icons.no_luggage_outlined)],
      ),
    )));
  }
}
