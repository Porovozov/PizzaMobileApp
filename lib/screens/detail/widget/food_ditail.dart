import 'package:flutter/material.dart';
import 'package:pizzamodels/constants/colors.dart';
import '../../../models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: kBackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                Icons.access_time_outlined,
                Colors.blue,
                food.waittime,
              ),
              _buildIconText(
                Icons.star_purple500_rounded,
                Colors.amber,
                food.score.toString(),
              ),
              _buildIconText(
                Icons.local_fire_department_outlined,
                Colors.red,
                food.cal,
              ),
              /*    _buildIconText(
                Icons.vaping_rooms,
                Colors.red,
                food.price.toString(),
              )*/
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Ингридиенты',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  //     color: Color.fromARGB(181, 238, 195, 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            width: 55,
                          ),
                          Text(food.ingredients[index].keys.first),
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(width: 15),
                itemCount: food.ingredients.length),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Описание',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            food.about,
            style: TextStyle(
              wordSpacing: 1.2,
              height: 1.5,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
