import 'package:flutter/material.dart';
import 'package:pizzamodels/models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 110,
          height: 110,
          child: Image.asset(food.imgUrl, fit: BoxFit.fitHeight),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    food.name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 10,
                  )
                ],
              ),
              Text(
                food.desc,
                style: TextStyle(
                    color: Color.fromARGB(255, 136, 136, 136), height: 1.5),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '${food.price}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\₽',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ))
      ]),
    );
  }
}
