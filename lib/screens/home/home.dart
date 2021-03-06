import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pizzamodels/constants/colors.dart';
import 'package:pizzamodels/models/restaurant.dart';
import 'package:pizzamodels/screens/home/widget/food_list.dart';
import 'package:pizzamodels/screens/home/widget/food_list_view.dart';
import 'package:pizzamodels/screens/home/widget/restaurant_info.dart';
import 'package:pizzamodels/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurrant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CustomAppBar(Icons.arrow_back_ios_outlined, Icons.add),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
              ),
              SizedBox(
                height: 25,
                width: 120,
              ),
              Icon(Icons.add),
            ],
          ),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          )
        ],
      ),
    );
  }
}
