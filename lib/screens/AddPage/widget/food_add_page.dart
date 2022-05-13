import 'package:flutter/material.dart';
import 'package:pizzamodels/widgets/custom_app_bar.dart';
import '../../../models/food.dart';

class FoodAddPage extends StatelessWidget {
  //final Food food;
  //FoodAddPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back,
              Icons.add,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(194, 227, 226, 226),
              ),
              child: (TextField()),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(194, 227, 226, 226),
              ),
              child: (TextField()),
            ),
          ],
        ),
      )),
    );
  }
}
